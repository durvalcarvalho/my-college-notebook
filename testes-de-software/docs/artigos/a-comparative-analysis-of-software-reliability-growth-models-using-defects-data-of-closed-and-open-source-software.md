# Uma análise comparativa de modelos de crescimento de confiabilidade de software usando dados de defeitos de software de código aberto e fechado

## Resumo

O objetivo deste estudo é comparar o ajuste (goodness of fit) e a capacidade de previsão de oitos modelos de crescimento de confiabilidade de software (SRGM) usando 50 conjuntos de dados de falhas diferentes. Esses conjuntos de dados contêm dados de defeitos coletados da fase de teste do sistema, fase operacional (defeitos de campo) e projetos de software de código-fonte aberto (OSS). Os dados de falha são modelados por oito SRGMs (Musa-Okumoto, Inflection S-Shaped, Goel-Okumoto, Delayed S-Shaped, Logistic, Gompertz, Yamada Exponential, e Generalized Goel Model). Esses modelos são escolhidos devido à sua prevalência entre muitos modelos de confiabilidade de software. Os resultados podem ser resumidos da seguinte forma:
- Capacidade de ajuste: Musa Okumoto se ajusta a todos os datasets, mas todos os modelos se encaixam em todos os conjuntos de dados OSS.

- Capacidade de previsão: Inflection S-Shaped e Goel Okumoto são os melhores preditores para conjuntos de dados industriais, Gompertz e Yamada são os melhores preditores para conjuntos de dados OSS.

- Capacidade de ajuste e previsão: Musa Okumoto e Inflection têm os melhores desempenhos em conjuntos de dados industriais. No entanto, isso acontece apenas em pouco mais de 50% dos conjuntos de dados. Gompertz e Inflection são os melhores executores para todos os conjuntos de dados OSS.

## 1. Introdução

O desenvolvimento de software é uma atividade que exige muito do cérebro. Portanto, a qualidade do produto está sujeita a grandes variações. A confiabilidade é um dos atributos mais importantes da qualidade do software, que é definida como a probabilidade de operação do software livre de falhas por um período de tempo especificado em um ambiente especificado. A partir dos anos 70, diferentes Modelos de Confiabilidade de Software (SRM) foram propostos para caracterização e previsão de confiabilidade de software. SRM é uma expressão matemática que especifica a forma geral do processo de falha de software em função de fatores como introdução de falha, remoção de falha e ambiente operacional. SRM é composto por diferentes parâmetros. Parâmetro é uma variável ou constante arbitrária que aparece em uma expressão matemática, e cada valor restringe ou determina a forma específica da expressão. A taxa de falha (falhas por unidade de tempo) de um sistema de software geralmente está diminuindo devido à identificação e remoção da falha. A modelagem de confiabilidade de software é feita para estimar a forma da curva da taxa de falha estimando estatisticamente os parâmetros associados ao modelo selecionado.

O objetivo desta medida é duplo: 1) estimar o tempo extra de execução durante o teste necessário para atender a um objetivo de confiabilidade especificado e 2) identificar a confiabilidade esperada do software quando o produto for lançado. Em geral, os SRM são categorizados como caixa branca e caixa preta. As abordagens da caixa branca analisam a estrutura, ou seja, a arquitetura do software que foi especificada e projetada. Esses modelos prevêem a confiabilidade do software com base no relacionamento entre os diferentes componentes e suas interações. Essas abordagens também são chamadas de abordagens determinísticas. Eles são baseados na complexidade lógica, ponto de decisão, comprimento do programa, operandos e operadores de software. Modelos baseados em caminhos e modelos baseados em estados são dois exemplos desse tipo de modelo de confiabilidade. Na literatura, esses modelos são conhecidos como Modelos de Confiabilidade Baseados em Arquitetura. As abordagens de caixa preta são classificadas em diferentes tipos, modelos de previsão inicial, SRGM, modelo baseado em domínio de entrada e modelos de caixa preta híbrida. Nosso trabalho está focado em modelos SRGM devido ao seu amplo uso. O SRGM pode ser aplicado para orientar a comissão de teste em sua decisão de interromper ou continuar o teste. Aqui, apresentamos uma análise comparativa dos modelos SRGM em termos de adequação, precisão de previsão e correção com base em trinta e oito conjuntos de dados de falha contendo dados de falha de teste de sistema, dados de defeitos de campo e OSS. O resto do artigo está organizado da seguinte forma. A seção 2 contém informações básicas e revisão da literatura. A seção 3 fornece os objetivos e questões de pesquisa deste estudo; a seção 4 descreve modelos e seleção de dados. A seção 5 descreve os resultados; a seção 6 conclui o estudo e fornece orientações para pesquisas futuras.

## 2. Contexto

### 2.1. Modelos de crescimento de confiabilidade de software (SRGMs)

SRGM é uma das classes proeminentes de SRM de caixa preta. Eles pressupõem que a confiabilidade aumenta depois que um defeito é detectado e corrigido. O SRGM pode ser aplicado para orientar a comissão de teste em sua decisão de interromper ou continuar o teste. Esses modelos são agrupados em modelos côncavos e em forma de S com base na suposição sobre o padrão de ocorrência de falha. Os modelos em forma de S assumem que o padrão de ocorrência do número cumulativo de falhas é em forma de S: inicialmente os testadores não estão familiarizados com o produto, então eles se tornam mais familiares e, portanto, há um aumento lento na remoção de falhas. Conforme as habilidades dos testadores melhoram, a taxa de detecção de defeitos aumenta rapidamente e, em seguida, se estabiliza conforme os erros residuais se tornam mais difíceis de remover.

Nos modelos de formato côncavo, o aumento na intensidade da falha atinge um pico antes que uma diminuição no padrão de falha seja observada. Portanto, os modelos côncavos indicam que se espera que a intensidade da falha diminua exponencialmente após o pico ser atingido. Os Modelos de Crescimento de Confiabilidade de Software medem e modelam o próprio processo de falha. Por isso, eles incluem um componente de tempo, que é caracteristicamente baseado em tempos de registro ti de falhas sucessivas i (i ≥1). O tempo pode ser registrado como tempo de execução ou tempo de calendário. Uma suposição geral desses modelos é que o software deve ser executado de acordo com seu perfil operacional; ou seja, as entradas de teste são selecionadas de acordo com a probabilidade de sua ocorrência durante a operação real do software em um determinado ambiente. Existem muitas descrições detalhadas de SRGM com muitos estudos e aplicações dos modelos em vários contextos. Os modelos diferem com base em suas suposições sobre o software e seu ambiente de execução.

### 2.2. Seleção de modelo

Nos últimos 40 anos, muitos SRGM foram propostos para caracterização de confiabilidade de software. A questão recorrente é, portanto, qual modelo escolher em um determinado contexto. Diferentes modelos devem ser avaliados, comparados e então o melhor deve ser escolhido. Muitos pesquisadores como Musa et al. mostraram que algumas famílias de modelos têm certas características que são consideradas melhores do que outras; por exemplo, a família geométrica de modelos (ou seja, modelos baseados na distribuição hipergeométrica para estimar o número de falhas de software residuais) tem uma qualidade de previsão melhor do que os outros modelos. Por comparação com diferentes modelos, Schick e Wolverton, e Sukert, propuseram uma nova abordagem, que sugeria técnicas para encontrar o melhor modelo para cada aplicação individual entre os modelos existentes. Brocklehurst et al. propôs que a natureza das falhas de software torna o processo de seleção de modelos em geral uma tarefa difícil. Eles observaram que as falhas de design ocultas são as principais causas das falhas de software. O artigo de Goel afirmou que diferentes modelos prevêem bem apenas em certos conjuntos de dados; e o melhor modelo para um determinado aplicativo pode ser selecionado comparando a qualidade preditiva de diferentes modelos. Abdel-Ghaly et al. analisaram a qualidade preditiva de 10 modelos usando 5 métodos de avaliação. Eles observaram que diferentes métodos de avaliação de modelo selecionam diferentes modelos como o melhor preditor. Khoshgoftaar sugeriu o Akaike Information Criteria (AIC), o melhor critério de seleção de modelo. Khoshgoftaar e Woodcock propuseram um método para a seleção de um modelo de confiabilidade entre várias alternativas usando a função log-verossimilhança (ou seja, uma função dos parâmetros dos modelos). Eles aplicaram o método aos logs de falha de um projeto. Apesar de muitos estudos terem sido realizados, não há consenso sobre como selecionar o melhor modelo antes de iniciar um projeto.


### 2.3. SRGM em sistema de código aberto

Diferentes estudos estão disponíveis na literatura sobre a aplicabilidade de modelos de confiabilidade de software para OSS, com resultados pouco claros. Syed Mohamad et al. examinaram a taxa de descoberta de defeitos de dois produtos OSS com software desenvolvido internamente usando 2 SRGM. Eles observaram que os dois produtos OSS têm um perfil diferente de descoberta de defeitos. Ying Zhou et al analisaram dados de rastreamento de bugs de 6 projetos OSS. Eles observaram que, ao longo de seu ciclo de desenvolvimento, os projetos OSS exibem um padrão de crescimento de confiabilidade semelhante ao de projetos de código fechado. Eles propuseram a distribuição geral de Weibull para modelar o padrão de ocorrência de falha de projetos OSS. Bruno Rossi et al analisaram o padrão de ocorrência de falha de 3 produtos OSS aplicando SRGM. Eles propuseram que o melhor modelo para OSS é a distribuição Weibull. Cobra Rahmani et al. compararam os recursos de ajuste e previsão de 3 modelos usando dados de falha de 5 projetos OSS. Eles observaram que o modelo Shneidewind é o melhor enquanto Weibull é o pior. Fengzhong et al examinaram os relatórios de erros de 6 projetos OSS. Eles modelaram os relatórios de bug usando técnicas não paramétricas. Eles sugeriram que os modelos de aditivo generalizado (GA) e as abordagens de suavização exponencial são adequados para a caracterização da confiabilidade de projetos de OSS. Portanto, de uma forma generalizada, a validação empírica de modelos de confiabilidade de software para projetos de OSS é necessária, a fim de tornar clara a aplicabilidade dos modelos de confiabilidade de software para projetos de OSS.


## 3. Objetivos, Questões de Pesquisa e Métricas (GQM)

Não há acordo sobre qual é o melhor modelo de confiabilidade para um determinado projeto, especialmente em seu início. Diferentes modelos prevêem bem apenas em determinados conjuntos de dados e o melhor modelo pode ser selecionado comparando as qualidades preditivas de uma série de modelos apenas no final de um projeto. É por isso que o objetivo deste estudo é comparar a caracterização da confiabilidade e a qualidade da predição de diferentes SRGM, a fim de tirar uma conclusão geral sobre o melhor ajuste e os melhores modelos de predição entre eles. Além disso, queremos estudar modelos SRGM com conjuntos de dados de falha industrial e de código aberto, a fim de tornar claros os resultados ambíguos da literatura de uma forma generalizada. Aqui, resumimos o objetivo e apresentamos as questões de pesquisa que derivam este estudo usando o modelo GQM.

|   |   |
|:-:|:-:|
| Objetivo do estudo  | Analisar diferentes modelos SRGM  |
| Propósito  | para comparar  |
| Foco  | sua capacidade de caracterizar e prever a confiabilidade de um projeto   |
| Stakeholders  | do ponto de vista dos gerentes de manutenção e qualidade |
| Fatores de contexto  | no contexto de sistemas industriais e de código aberto |

Descrevemos as questões de pesquisa e métricas que completam o GQM. A primeira etapa é analisar a capacidade dos modelos de simplesmente ajustar os conjuntos de dados. A este respeito, definimos RQ1 e comparamos a capacidade de ajuste, em termos de R², dos modelos em todo o conjunto de dados. A segunda etapa é analisar a capacidade de previsão. No que diz respeito à previsão, temos dois RQs diferentes. RQ2 simplesmente compara os modelos em termos de PRE e TS. O RQ3 tenta ajudar na seleção de um modelo, do ponto de vista de um gerente de projeto que tem apenas parte do conjunto de dados disponível e precisa selecionar um modelo para previsão. Portanto, RQ3 analisa se um modelo com um bom ajuste (R² alto) também é um bom preditor. Os RQs agora são apresentados em detalhes.   

### 3.1. RQ 1: Quais modelos SRGM se adaptam melhor? 

Ou, em termos operacionais, qual SRGM tem o melhor R²? Os modelos são ajustados em todos os conjuntos de dados e seus R² são analisados ​​e comparados. O ajuste do modelo é necessário para estimar os parâmetros dos modelos. O ajuste pode ser feito usando regressão linear ou não linear (NLR), dependendo da natureza dos dados. Usaremos o ajuste de NLR devido à natureza dos dados. NLR é um processo iterativo que começa com os valores estimados iniciais para cada parâmetro. O algoritmo iterativo então os ajusta gradualmente até convergir para o melhor ajuste, de forma que os ajustes não façam praticamente nenhuma diferença na soma dos quadrados. Os parâmetros de um modelo não convergem para o melhor ajuste se o modelo não puder descrever os dados. Consequentemente, o modelo não se ajusta aos dados. Ao contrário, no caso de convergência do algoritmo iterativo, o R² é a métrica que indica o sucesso do ajuste. Usamos R² para o teste de adequação porque é a medida mais poderosa. É definido como:

<div align='center'>
    <img src='artigos/static/vetro-ullah-morisio/formula-01.png'>
</div>

Na expressão k representa o tamanho do conjunto de dados, m(ti) representa falhas cumulativas previstas e mi representa falhas cumulativas reais no tempo ti. R² assume um valor entre 0 e 1, inclusive. Quanto mais próximo o valor de R² estiver de um, melhor será o ajuste. Consideramos um bom ajuste quando R² > 0.90. Analisamos e classificamos os modelos com base em seu R².

### 3.2. RQ 2: Quais modelos SRGM são bons preditores?

Usamos o histórico de falhas parciais dos produtos para cumprir a previsão. Os primeiros dois terços dos pontos de dados de cada conjunto de dados a seguir, são usados ​​para estimar os parâmetros. Esses valores estimados dos parâmetros são então aplicados a todo o intervalo de tempo para o qual os dados de falha são coletados em cada conjunto de dados, a fim de comparar as qualidades de predição dos modelos. A capacidade de previsão pode ser avaliada sob dois pontos de vista, precisão e correção. A precisão lida com a diferença entre o estimado e o real em um período de tempo. A correção lida com a diferença entre o previsto e o real em um ponto específico no tempo (por exemplo, data de lançamento). Um modelo pode ser preciso, mas não correto e vice-versa. Por esta razão, usamos a Estatística de Theil (TS) para precisão e Erro Relativo Previsto (PRE) para correção. 

1) A estatística de Theil (TS) é a porcentagem de desvio médio sobre todos os pontos de dados. Quanto mais próxima a estatística de Theil estiver de zero, melhor será a precisão da previsão do modelo. É definido como:

<div align='center'>
    <img src='artigos/static/vetro-ullah-morisio/formula-02.png'>
</div>

2) Erro relativo previsto é uma razão entre a diferença de erro (real versus previsto) e o número previsto de defeitos no ponto de tempo de previsão de falhas (por exemplo, tempo de liberação).

<div align='center'>
    <img src='artigos/static/vetro-ullah-morisio/formula-03.png'>
</div>

Consideramos uma previsão boa se TS estiver abaixo de 10% e PRE estiver dentro da faixa [-10%, +10%] do número total de defeitos reais. Classificamos e analisamos a previsão dos modelos com base em seus TS e PRE.

### 3.3. RQ 3: Um modelo com bom ajuste também é um bom preditor?

Ou, em termos operacionais, um modelo com um bom R² também tem um bom TS e PRE? Os modelos são ajustados em dois terços dos conjuntos de dados, o R² é calculado neste ajuste, TS e PRE são calculados no terço restante do conjunto de dados. RQ2 tenta entender quais modelos são os melhores preditores, mas faz uma visão a posteriori. RQ3 tem uma visão a priori, ou usa a visão de um gerente de projeto que tem que decidir qual modelo usar antes do final do projeto (em dois terços dele), e só tem a bondade do ajuste como uma justificativa para uma decisão.

## 4. Modelos e seleção dos dados

### 4.1. Modelos SRGMs

Este estudo utilizou oito SRGM, selecionados por serem os mais representativos em sua categoria. A Tabela 1 reporta seu nome e referência e, para cada um deles, função de valor médio, m(t) que representa o número acumulado de falhas ao longo do tempo t. Cada modelo possui uma combinação diferente de parâmetros.

• a = número total esperado de defeitos no código.
• b = fator de forma, ou seja, as taxas nas quais a taxa de falha diminui.
• c = número esperado de falhas residuais no software no final do teste do sistema.

<div align='center'>
    <img src='artigos/static/vetro-ullah-morisio/tabela-01.png'>
</div>

### 4.2. Datasets

O objetivo do estudo é analisar o SRGM selecionado usando o maior número possível de conjuntos de dados de falha de software. Para este propósito, coletamos dados de falha da literatura. Pesquisamos artigos no IEEE Explorer, ACM Digital Library e em três periódicos, ou seja, Journal of Information and Software Technology, Journal of System and Software e IEEE software. Para essa pesquisa foram pesquisados por artigos que continham em seu conteúdo uma das seguintes strings: taxa de falha de software, intensidade de falha de software, conjunto de dados de falha de software, taxa de falha e confiabilidade, intensidade de falha e confiabilidade. Encontramos 2100 artigos, 19 dos quais foram relevantes para nosso estudo porque continham conjuntos de dados de falha em 38 projetos. Destes, 32 projetos eram de código fechado e 6 eram de código aberto. Em 32 projetos de código fechado, 22 contêm dados de falha de teste do sistema e 10 contêm dados de defeito de campo coletados na fase de operação. Os dados de projetos OSS não têm distinção entre as fases. Selecionamos o teste do sistema e os conjuntos de dados de defeito de campo para avaliar o melhor ajuste e melhor preditor SRGM para o teste do sistema e a fase de operação, porque os modelos de confiabilidade do software são usados ​​para a previsão de falha em ambas as fases e a fase pode ser um fator para a seleção do modelo. Seis conjuntos de dados contêm dados de defeitos de dois Projetos OSS, Apache e GNOME. Três conjuntos de dados foram coletados de diferentes versões de cada um dos dois projetos OSS. Além disso, identificamos dois projetos de código aberto notáveis ​​e ativos de apache.org (https://issues.apache.org/). Ambos os projetos, C++ Standard Library e JUDDI são considerados estáveis ​​em produção. Os 66% dos problemas relatados no primeiro projeto foram corrigidos, enquanto no segundo projeto 95% dos problemas relatados foram corrigidos e encerrados. Coletamos dados de defeitos dos projetos selecionados em apache.org usando JIRA. JIRA é um rastreador de problemas comerciais. Os problemas podem ser bugs, solicitações de recursos, melhorias ou tarefas. Para cada versão, coletamos todos os problemas relatados na data de observação, juntamente com a data em que foram relatados (data de abertura). Para cada projeto de código aberto, consideramos todas as versões principais até abril de 2012. Para a biblioteca padrão C++, conseguimos oito (8) versões. Infelizmente, o JUDDI não tinha tantos relatórios e versões em comparação com a biblioteca padrão C++ e tivemos que limitar as versões a quatro (4) para o JUDDI até outubro de 2011. nos concentramos nos problemas que foram declarados "bug" ou "defeito" excluindo “aprimoramento”, “solicitação de recurso”, “tarefa” ou “patch”. Pelo mesmo motivo, consideramos apenas os problemas que foram relatados como fechados ou resolvidos após a data de lançamento de cada versão. Além disso, excluímos questões fechadas antes da data de lançamento. Esses problemas são normalmente encontrados nas versões candidatas (ou de teste) dos projetos.

## 5. Resultado

### 5.1. RQ 1: Quais modelos SRGM se adaptam melhor? 

Primeiro, consideramos a capacidade básica de um modelo para se ajustar ao conjunto de dados (se ajusta ou não), independentemente da qualidade do ajuste (R²). A Fig. 1 relata para cada modelo no eixo X a porcentagem de conjuntos de dados ajustados (eixo Y) em cada grupo de dados (barras coloridas). Musa se ajustou a todos os conjuntos de dados em cada grupo de dados, a maioria dos modelos também se encaixou, exceto Yamada exponencial, Gompertz, Goel generalizado que se ajustou mal, especialmente os conjuntos de dados de teste de campo e de sistema. Para analisar a qualidade do ajuste, a Fig. 2 relata quantas vezes um modelo é aquele com melhor R². Por exemplo, Musa Okumoto tem o melhor R² em 60% dos conjuntos de dados de defeitos de campo. Musa Okumoto tem o melhor desempenho em dados de defeitos de campo; Gompertz tem resultados muito bons em conjuntos de dados OSS seguidos diretamente pelo modelo S-Shaped da Inflexão. Mas, fora isso, não existe um melhor modelo claro. No entanto, analisar o melhor desempenho apenas como na Fig 2 pode ser enganoso, no caso de muitos modelos se encaixarem com um R² semelhante no mesmo conjunto de dados. Portanto, nos boxplots da Figura 5 relatamos os boxplots de R² por modelo e por categoria de conjunto de dados. Deve ser lembrado, no entanto, que os boxplots da Figura 5 excluem os modelos que não se encaixaram em todos os conjuntos de dados (Figura 1) e, portanto, são significativos para todos os modelos, exceto Yamada exponencial, Gompertz e Goel generalizado. Musa Okumoto continua sendo o melhor intérprete. Ao lado, os outros modelos também têm boxplot estreito (sempre melhor do que 0,9, o limite representado como uma linha horizontal colorida), mas alguns outliers. Deve-se notar que todos os modelos se comportam extremamente bem nos conjuntos de dados OSS, exceto Goel generalizado.

<div align='center'>
    <img src='artigos/static/vetro-ullah-morisio/figura-01.png'>
</div>

<div align='center'>
    <img src='artigos/static/vetro-ullah-morisio/figura-02.png'>
</div>

### 5.2. RQ 2: Quais modelos SRGM são bons preditores?

Para modelos que poderiam se ajustar ao conjunto de dados, usamos os primeiros dois terços dos pontos de dados dos conjuntos de dados para treinar o modelo e previmos o último terço. Analisamos sua capacidade de previsão em termos de exatidão e precisão.

#### 5.2.1. Precisão:
A Figura 3 mostra o número de vezes que um modelo é o melhor preditor em termos de TS. É claro que Musa supera os outros em ambos os conjuntos de dados industriais. A Logística está diretamente por trás disso. Pelo contrário, no caso do OSS obtivemos vários empates (o que explica porque a soma da porcentagem pode ser maior que 100%), e o melhor modelo é Gompertz seguido diretamente por Logística. A Figura 6 relata os valores de TS para todos os conjuntos de dados. A linha vermelha representa o limite de 0,1, geralmente considerado um indicador de boa precisão. A Figura 6 nos permite discutir bons modelos, em vez do melhor modelo como na Figura 3.

<div align='center'>
    <img src='artigos/static/vetro-ullah-morisio/figura-03.png'>
</div>

#### 5.2.1. Correção:
Olhando para as classificações no diagrama do gráfico de barras na Figura 4, observamos que Musa Okumoto é o melhor modelo em termos de correção na maioria dos conjuntos de dados de teste de sistema e de defeitos de campo. Inflection S-Shaped está diretamente atrás de Musa Okumoto no caso de conjuntos de dados de teste do sistema, enquanto Logística está diretamente atrás disso no caso de conjuntos de dados de defeito de campo. Pelo contrário, no caso do OSS Gompertz é o melhor. Além disso, não há um vencedor claro. A Figura 7 relata os valores PRE para todos os conjuntos de dados. A linha vermelha representa o limite de ±10%, geralmente considerado um indicador de boa correção. A Figura 7 nos permite discutir bons modelos, em vez do melhor modelo como na Figura 4.

<div align='center'>
    <img src='artigos/static/vetro-ullah-morisio/figura-04.png'>
</div>

### 5.3. RQ 3: Um modelo com bom ajuste também é um bom preditor?

Aqui ajustamos modelos em dois terços dos conjuntos de dados e analisamos se aqueles com bom R² também são bons preditores. A Tabela 2 relata modelos e conjuntos de dados. Um modelo é descrito por três células por categoria de conjunto de dados. O primeiro contém o número de vezes que um modelo se ajusta ao conjunto de dados, com qualquer R² (as informações também estão na Figura 1), o segundo mostra quantas vezes o modelo se ajusta a um conjunto de dados com R² melhor que 0,9 e prevê com TS<0,1 , o terceiro mostra quantas vezes o modelo se ajusta a um conjunto de dados com R² melhor que 0,9 e prevê com PRE dentro de 10%. Observamos na Tabela 2 que:

• Em conjuntos de dados industriais, Musa e Inflexão são os únicos com melhor capacidade de previsão - no entanto, isso acontece apenas em um pouco mais da metade dos conjuntos de dados

• Em conjuntos de dados OSS, Gompertz e Inflection têm boa capacidade de previsão para todos os conjuntos de dados, seguidos por Logística e Goel Okumoto.

<div align='center'>
    <img src='artigos/static/vetro-ullah-morisio/tabela-02.png'>
</div>

## 6. Conclusões

Estudamos SRGM selecionados de maneira generalizada com o propósito de derivar uma conclusão geral. Na literatura ninguém validou o SRM de forma generalizada: no máximo quatro / cinco modelos são validados em dois / três conjuntos de dados. Descobrimos que o modelo Musa-Okumoto é o melhor em ajuste e previsões em conjuntos de dados industriais.