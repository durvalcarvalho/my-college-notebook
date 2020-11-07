# Effect of Code Coverage on Software Reliability Measurement

## Resumo

Os modelos de crescimento de confiabilidade existentes com frequência superestimam a confiabilidade dos softwares. Estudos empíricos sugerem que a superestimação ocorrem por que os modelos desconhecem a natureza dos testes que estão sendo aplicados.

Toda técnicas de teste tem um limite superior na capacidade de revelar bugs em um software. Porém, é comum que esses testes sejam realizados exaustivamente em regiões do código até o momento em que nenhum bug novo é encontrado, e a má interpretação desse fenômeno pode levar ao entendimento que a confiabilidade do sistema chegou no seu platô.

Esse artigo apresenta um técnica que se propõe a solucionar esse problema, usando medições de tempo de execução e cobertura de teste para aferir a função de falha de um sistema.

Informações sobre a cobertura de teste são usadas para aferir a "área" que esse teste abrange. Já o tempo de execução entre testes, que não aumenta a cobertura nem causa uma falha, é reduzido por um fator parametrizado.

Experimentos foram conduzidos para avaliar esta técnica, em um programa criado em um ambiente simulado com falhas simuladas, e em dois sistemas industriais que continham décimos de falhas comuns. Dois modelos de confiabilidade bem conhecidos, Goel-Okumoto e Musa-Okumoto, foram aplicados tanto aos dados brutos, quanto aos ajustados com esta técnica. Os resultados mostram que a superestimação da confiabilidade é corrigida adequadamente nos casos estudados.

Essa nova abordagem tem potencial, não apenas para alcançar medições mais precisa da confiabilidade de sistemas, mas também para revelar formas mais eficazes de conduzir o desenlvimento de um software.

## Suposição do modelo

- Todo tempo aferido é referente ao tempo de CPU
- Tempos entre falhas são independentes
- Todos os inputs são gerados usando perfis operacionais pré-definidos, tanto para os testes quanto para a medições de confiabilidade.
- Nenhuma falha é inserida durante a depuração
- Os reparos das falhas occorem instantaneamente, assim que um falha é observada
- Cada falha é causada por um único bug

## 1. Introdução

Confiabilidade de um programa é frequentemente definida como a probabilidade de um programa funcionar sem apresentar falhas em um determinado ambiente, por um período específico de tempo. Desde a década de 60, vários modelos analiticos foram propostos para estimação da confiabilidade. Os modelos baseados no domínio do tempo, também chamados de SRGM, são os mais populares e foram os mais usados e estudados nas últimas décadas. Esses modelos usam o histório de falha de um software, obtido durante o período de teste, para predizer o comportamento do programa quando estiver na produção. Esses modelos assumem que o ambiente de teste será semelhante ao ambiente de produção (inclusive os perfis operacionais). Esses modelos possuem algumas dificuldades fundamentais, algumas delas são: a saturação da identificação de falhas no ambiente de teste, que frequentemente não é semelhante ao ambiente de produção; A dificuldade de se criar um perfis operacionais que sejam semelhantes ao perfis operacionais reais.

Nossas observações, tanto de estudos empíricos quanto analíticos, mostram que as pervisões feitas pelo SRGM tendem a ser muito otimistas, e frequentemente o software apresenta uma confiabilidade menor do que a aferida pelo modelo.

Várias tentativas foram feitas para melhorar a estimativa dos SRGM. Uma das propostas de melhoria feitas foi o pré-processamento dos dados obtidos pela atividade de teste, antes de utilizá-los no medelo. Outra sugestão foi que se utilizasse dados sobre a cobertura do software deveriam ser usadas invés do tempo do teste. Porém a relação entre cobertura dos testes e cobertura de feito é bastante complexa. Não há nenhuma descrição formal da literatura especificando como a informação da cobertura de teste deve ser usada na medição de confiabilidade de sistemas.

Esse artigo apresenta uma técnica que modela a taxa de falhas com a respectiva cobertura e tempo de execução do teste que detectou a falha. Quando um programa é testado com sucesso contra uma suite de testes, o software pode continuar o teste, usando o mesmo conjunto de teste ou semelhante, sem apresentar nenhuma falha. Se o tempo entre as falhas é a única consideração no processo de estimativa de confiabilidade, então, obviamente, a confiabilidade do programa será superestimada, uma vez que na prática o perfil operacional pode diferir daquele implícito pelo conjunto de testes. Para superar esse problema, nossa técnica usa cobertura de código para ajustar a taxa de falhas antes de utilizar os dados em um SRGM.

Os intervalos de tempo apresentado entre falhas são ajustados para qualquer esforço de teste que seja redundante em relação a um critério de cobertuda escolhido, por exemplo, repetir os mesmos casos de teste ou não aumentar a cobertura de bloco com novos casos de teste. Aplicamos esta abordagem para o os Modelos Goel-Okumoto e Musa-Okumoto e observamos uma melhora na estimativa precisa para ambos os modelos.

## 2. Metodologia

A relação entre cobertura de código e confiabilidade de software vem sendo estudada por muitos pesquisadores. Estudos empíricos mostram que a detectabilidade de falhas correlaciona com a cobertura de código. Consequêntemente, confiabilidade de software também está relacionada com cobertura de código. Esse experimento reforça a crença de que as informações de cobertura de código devem ser consideradas na estimativa de confiabilidade. Os SRGMs dependem de dados de falha relacionados com o tempo. Quando inicia uma atividade de teste, falhas são reveladas, essas falhas são corrigidas, e futuras atividades de teste são menos propensas a detelhar novas falhas. Desse modo, o intervalo entre falhas aumenta, assim aumentando a estimativa de confiabilidade dos modelos SRGM.

Portanto, a confiabilidade de um software aumenta quando o número de falhas é reduzido. Porém, quanto mais redundante for os testes realizados, maior será a chance de que as estimativas de confiabilidade seja superestimadas. Para reduzir essa superestimativa, é preciso determinar quais testes são redundantes e quanto do esforço de teste é considerado eficaz (capaz de identificar novos erros).

No modelo proposto, a informação da cobertura de código é usada para determinar a eficácia de uma determinada suite de teste. Uma suite de teste que não aumenta a cobertura do código e não encontra novas falhas é considerada não efetiva. O tempo de execução de tal caso de teste é reduzido usando uma taxa de compressão que é baseada no tempo de execução e na cobertura de código. 

## 3. Técnica de processamento de dados com cobertura aprimorada 

Um teste Ti é considerado não efetivo se a cobertura e quantidade de erros não mudarem após a aplicação do teste. (ci == ci-1 e fi == fi-1).

O vetor vi1 descreve a mudança no número de falhas em relação ao tempo de teste, independentemente da cobertura. Enquanto vi2 descreve a mudança no número de falhas em relação a cobertura de código, independentemente do tempo de teste. Nós acreditamos que tanto o tempo de teste quanto a cobertura de código é crucial para a predição de falhas, portanto devemos combinar esses dados para medir a eficácia dos testes.

Se o teste Ti é ineficaz, então o tempo decorrido durante o teste é reduzido usando um taxa de compressão, e o valor obtido após a aplicação da redução que é usada no SRGM.

## 4. Simulação

Esta seção descreve um experimento que foi conduzido no ambiente de simulação.  Foram usados os modelos Goel-Okumoto, Musa-Okumoto e T&RSE para estimar a confiabilidade do software. Os procedimentos realizados no estudo foram:

1. Gere um grafo do fluxo do programa (F) com 1000 nós.
2. Faça anotações no grafo com as falhas atribuindo a probabilidade de infecção da falha e a probabilidade de propagação de falha a cada nó.
3. Teste o grafo usando a técnica de teste aleatório em relação a um perfil uniforme. Os bugs que causam falha são removidos durante a depuração.
4. Colete os dados obtidos na etapa 3 e utilize-os no modelo SRGM e obtenha a estimativa de confiabilidade.
5. Utilize a técnica de processamento de dados com cobertura aprimorada para comprimir os dados dos testes não efetivos. Então utilize os dados gerados no modelo SRGM para obter a estimativa de confiabilidade.

A figura abaixo mostra a estimativa de confiabilidade obtida aplicando os dados originais obtidos dos modelos Goel-Okumoto, Musa-Okumoto e as estimativas obtidas usando dados processados, GOe e MOe. Os resultados mostram que para 270000 unidades de teste-tempo a técnica proposta reduziu a superestimativa de confiabilidade dos modelos G-O e M-O de 33.5% para 0% e de 12.17% para 0.55%, respectivamente. Já para 300000 unidades de teste-tempo as estimativas foram de 29.3% para 2.86% para o modelo G-O e de 12.4% para 1.43% para o modelo M-O.

<div align="center">
  <img src="artigos/static/GO-MO-GOe-MOe.png">
</div>

## 5. Aplicações

Para demostrar a técnica apresentada em aplicações reais, foi conduzido experimentos em dois programas: _autopilot_ e _orecolo_.

### 5.1. _autopilot_ Project

O projeto _autopilot_  foi desenvolvido por multiplos times independentes da Universidade de Iowa e da Rockwell & Collions Avionics Division. A aplicação consiste em "funções de controle de vôo automático para pouso de aviões comerciais".

Essa aplicação possui 5 versçies de programa redundantes (forks), mas desenvolvidas de forma independente, para um total de 7.000 linhas de código (4.200 instruções executáveis) e 30 falhas naturais (falhas já identificadas, mas não corrigidas).

#### 5.1.1. Testando e Depurando

A testagem do software _autopilot_ consiste na execução de vários cenários de uso e na observação dos feedbacks recebidos. A rotina de teste consiste nos seguintes passos:



```
vector<Tests> test_suit = CreateTesteSuit(usuário = "Aluno");
vector<Tests> failure_tests_suit;

bool TEST_REPEAT = false;

Tests selected_test;

if(TEST_REPEAT == false) {
    selected_test = SelectRandomTest(test_suit);
}

else {
    selected_test = SelectRandomTest(failure_tests_suit);
}

bool errors = selected_test.run();

if(erros) {
    BugOrigin bug_source = FindBug(errors);
    FixBugs(bug_source);

    TEST_REPEAT = true;
    failure_tests_suit.push_back(selected_test);
}
```

#### 5.1.2. Estimativa de Confiabilidade

O R, medido como a razão entre o número de execuções bem-sucedidas e o número total de execuções, foi calculado para os tempos de teste. Para estimar, o programa foi executado em relação às entradas com base no perfil operacional usado no processo de teste. O processo de medição da confiabilidade foi repetido até que a medição da confiabilidade convergisse para um intervalo de confiança de 95%.

### 5.2. _orecolo_ Project

O projeto _orecolo_ foi desenvolvido pela Agência Espacial Europeia, para fornecer uma interface de usuário orientada a linguagem que permita o usuário descrever a configuração de uma série de antenas usando linguagem de alto nível. A aplicação consiste em cerca de 10.000 linhas de código (6.100 instruções executáveis) e 33 falhas naturais.

#### 5.2.1. Testando e Depurando

A atividade de teste é realizada usando um gerador de input, que produz casos de testes baseados em perfil operacional. Se é descoberto uma falha é realizado a depuração do software até se encontrar a origem do bug e é consertado.

#### 5.2.2. Estimativa de Confiabilidade

A unidade de execução é medida como o número de casos de teste, em vez do tempo de execução, devido à natureza dos inputs gerados (a tarefa de geração de inputs é automatizada, então não faz mto sentido medir o tempo, e sim a quantidade de inputs realizados até a descoberta da falha).

### 6. Conclusão

Nossa técnica mede a cobertura do teste na estimativa da confiabilidade do software. Essa técnica parece melhorar a estimativa realizada pelos modelos tradicionais de confiabilidade (G-O e M-O). Desse modo, o seu uso, deverá melhorar o entendimento sobre a confiabilidade de um sistema, e irá melhorar a desenvolver produtos com maior qualidade. Essa técnica também auxilia desenvolvedores a verificar se um teste é inefetivo, e também ajudará a identificar o ponto onde a execução de novos testes não aumentam consideravelmente a confiabilidade do sistema, indicando assim um ponto de parada.

Nossos experimentos foram realizados em programas simulados e em programas reais, e sugerem que essa técnica apresenta resultados mais condizentes com a realidade da confiabilidade de um sistema.