# 9. Detecção de defeitos e melhoria da qualidade

[...]

## 9.5. Previsão de confiabilidade de software
## 9.5.1. Engenharia prática de confiabilidade de software

Engenharia de Confiabilidade de Software é um procedimento estatístico associado com as atividades de teste e correção de bugs durante o desenvolvimento. É usado também após a entrega de software, com base em dados de campo, para validação de modelos de previsão. Os clientes de tais modelos de previsões e os valores de confiabilidade resultantes são gerentes de desenvolvimento que os utilizam para determinar as melhores técnicas de detecção de defeitos adequadas e encontrar o tempo de entrega ideal do sistema.

Gerentes de Operação usam esse dado para decidir quanto incluir uma nova funcionalidade em um produto que já está sendo usado no mercado.

Gerentes de manutenção usam os números de confiabilidade para planejar os recursos de que precisam entregar as correções em tempo hábil de acordo com os prazos contratados.

A abordagem atual dos modelos de confiabilidade de software focam nas atividades de teste e correção de bugs durante o processo de desenvolvimento. Com base nos dados dos tempos entre as ocorrências de falhas, coletadas durante os testes, tentamos fazer inferências sobre como testes adicionais e retrabalho melhoram a confiabilidade do produto e sobre o quão confiável o produto seria, uma vez que fosse lançado para o usuário.

Engenharia de Confiabilidade de Software inclui as seguintes atividades:

- Selecionar uma mistura de fatores de qualidade orientados para maximizar a satisfação do cliente.
-  Determinar objetivos de confiabilidade (critério de parada para as atividades de teste)
- Previsão de confiabilidade com base em modelos do processo de desenvolvimento e seu impacto na introdução, identificação e correção de falhas.
- Dar suporte na criação e execução de estratégias de teste (testes caixa-branca, controle do fluxo de cobertura, testes caixa-preta, perfis operacionais, etc.)
- Fornecer uma visão do processo de desenvolvimento e sua influência na confiabilidade do software (as entregas estão aumentando ou diminuindo a confiabilidade do sistema, ...)
- Melhorar os processos de desenvolvimento, visando obter um software de maior confiabilidade (introdução de atividades para aumentar a confiabilidade do sistema, ...)
- Definir e validar métricas e modelos de predição de confiabilidade

A lista de atividades acima é principalmente do ponto de vista do cliente. Ao se fazer a distinção entre falhas e erros (failure and faults), o cliente está interessado na redução das falhas. A ênfase na redução de falhas significa que o desenvolvimento e os testes são centrados nas funções nos modos operacionais normais e extraordinários (cobertura de uso em vez de cobertura total do sistema, ou perfis operacionais em vez de perfis funcionais durante a avaliação da confiabilidade).

Nesse sessão iremos focar nos modelos de confiabilidade que são usados para medir e para estimar (prever) a confiabilidade de uma versão do sistema, durante os testes e durante sua utilização pelos usuários.

Esses modelos de confiabilidade se baseiam em modelos estatísticos, que requerem dados acurados da atividade de teste e dados referêntes as falhas apresentadas em relação ao tempo. Muitos modelos devem ser considerados e avaliados quanto à sua precisão preditiva, a fim de selecionar o modelo mais preciso e confiável para a previsão da confiabilidade. Não adianta alternar os modelos após os fatos para obter o melhor ajuste (maior confiabilidade), porque então você não teria ideia de quão preciso o modelo seria em um cenário preditivo. Ao contrário de muitos trabalhos de pesquisas sobre o assunto, nosso principal interesse é selecionar um modelo que forneça em configurações muito diferentes (ou seja, tamanhos de projetos) do tipo de software um bom ajuste que possa ser usado para gerenciamento de projetos. A atividade de previsão de confiabilidade deve ser realizada em pontos intermediários e no final do teste do sistema.

Nos pontos intermediários, as previsões de confiabilidade fornecerão uma medida de confiabilidade atual do produto e seu crescimento e, portanto, servirão como um instrumento para estimar o tempo ainda necessário para o teste. As previsões também ajudam a avaliar o trade-off entre testes extensivos e perda parcial do mercado devido atrasos na entrega.

No final do desenvolvimento, que consiste na decisão de avaliar a software antes de entregá-lo para o cliente, estimativas de confiabilidade facilita na verificação do cumprimento de requisitos de confiabilidade. Esses requisitos são impactantes quando o software de destina para os mercados de comunicação, bancário, defesa, espacial, médico, etc. Geralmente, projetos desse tipo possuem em seus contratos critérios bem específicos a respeito da confiabilidade do sistema.

Por exemplo, os objetivos de taxa de falha geralmente serão mais baixos (mais rigorosos) para classes de severidade de falha alta. Os fatores envolvidos na definição dos objetivos de taxa de falha abrangem o mercado e a situação competitiva, as metas de satisfação do usuário e os riscos relacionados ao mau funcionamento do sistema. Os custos do ciclo de vida relacionados ao desenvolvimento, os testes e a implementação em uma situação competitiva devem ser avaliados cuidadosamente, para evitar a definição de objetivos de confiabilidade muito altos que impacte na competitividade do produto desenvolvido.

Modelos de confiabilidade são inúteis se não forem validados continuamente em comparação com as taxas de falhas reais observadas. Assim, também incluímos em nossos modelos, que serão apresentados posteriormente nesta seção, um gráfico de dados previstos versus dados realmente observados.

A aplicação de modelos de confiabilidade para previsão de confiabilidade é baseada em um algoritmo genérico para seleção e ajuste de modelo:

1. Estabeleça metas de acordo com as áreas de processo ou produto mais críticos (por exemplo, seguindo o paradigma de melhoria de qualidade ou aplicando uma análise de Pareto).

2. Identifique os dados apropriados para analisar bugs e falhas (faults and failures) (ou seja, com classificações de acordo com a gravidade, tempo entre as falhas, razões para falhas, casos de teste que ajudaram na detecção, etc.).

3. Colete dados relevantes para "alimentar" os modelos para assim obter insights sobre como antigir os objetivos desejados. A coleta de dados é incômoda e exaustiva: as ferramentas podem mudar, os processos também, a equipe de desenvolvimento muitas vezes não está disposta a fornecer esforços adicionais para a coleta de dados, e o pior de tudo, a administração muitas vezes não deseja mudanças que os afete pessoalmente.

4. Recuperar dados históricos que estavam disponíveis em determinados registros de tempo no processo de desenvolvimento de software (por exemplo, taxas de falha de fases de teste); o último deles servirá como pontos de partidas para os modelos de preditivos.

5. Modele o processo de desenvolvimento e selecione um modelo de introdução de falhas, um modelo de teste e modelo de correção que melhor se adapte aos proceeos internos da equipe.

6. Selecione um modelo de previsão de confiabilidade que melhor se adapte aos modelos escolhidos.

7. Estime os parâmetros para o modelo de confiabilidade usando apenas dados estavam disponíveis nos registros de data e hora originais. (NÃO INVENTE DADOS)

8. Extrapole a função em um período de tempo futuro para realizar uma previsão. Se os dados históricos estiverem disponíveis após os registros de data e hora fornecidos, é possível prever falhas.

9. Compare a falha prevista com as falhas ocorridas.

Esse processo pode ser repetido em várias releases e analisado para definir qual o melhor modelo para o cenário aplicado.

## 9.5.2. Aplicação de modelos de confiabilidade crescente

Modelos de confiabilidade crescente assumem que quando uma falha ocorre há um esforço de correção para identificar a origem da falha e corrigir o bug. Após a correção o software é executado novamente, e eventualmente irá falhar por conta de outra falha. Quando um defeito é removido sem a introdução de novos defeitos, e sobre a suposição que o número de defeitos na base de código é finito, é entendido que a confiabilidade é crescente no decorrer do tempo. Os tempos sucessivos de trabalho sem falhas são a inputs para os modelos de crescimento de confiabilidade probabilística, que usam esses dados para estimar a confiabilidade atual do software em estudo e para prever como a confiabilidade irá melhorar ainda mais no futuro.

Muitos modelos de previsão de confiabilidade de software são baseados em algum tipo de processo de Poisson. Processos de software são bem conhecidos em todos os campos que lidam com eventos que ocorrem randomicante e independentemente um do outro. As aplicações incluem a ocorência de chamadas telefônicas em um sistema de comutação ou sua duração individual. Ambas as situações foram extensivamente investigadas na teoria do tráfego com o resultado de que seguem um distribuição de Poisson que não são normais, mas sim distorcidas e que dependem de vários parâmetros. Naturalmente, a ocorrência de falhas e de chamadas telefônicas podem ser comparadas, fornecendo uma base na definição de modelos de confiabilidade.

Modelos de Poisson são baseados nas seguintes suposições:
- O número total de falhas acumuladas no início da medição é zero.
- As falhas são independentes de outros eventos e do histórico de falhas.
- A probabilidade da ocorrência de uma falha em um dado intervalo de tempo é desprezível e é a mesma para uma segunda probabilidade de ocorrência em outro intervalo igual de tempo.

Um propriedade importante do processo de Poisson é a aditividade, que diz que processos de Poisson mutuamente independentes com intensidades λi pode ser sobreposto para criar um processo Poisson geral com intensidade λ, onde λ é a soma de todos os λi.

Formalmente a intensidade de falha λ(t) e a coleção de todas as falhas no decorrer do tempo t, são variáveis aleatórias distribuídas de Poisson. 

Um modelo com a intensidade de falha constante, um processo homogêneo de Poisson, é aplicável durante as operações de campo sem correções de falhas. Por outro lado, se as correções forem feitas em resposta a falhas, como  durante o teste ou quando novas liberações são introduzidas no campo, um processo de Poisson não homogêneio (NHPP, Nonhomogeneous Poisson Process) é o mais apropriado. No último caso, a taxa de falhas decrescem no decorrer do tempo na medida que as correções são realizadas. A segunda abordagem em que a taxa de falhas decrescem é dividida em dois modelos básicos:
- Modelo de falhas infinitas, como o modelo de tempo de execução de Poisson logarítmico não homogêneo (LNHPP). (Outros representantes desse modelo é o Modelo de Littlewood-Verrall e o modelo de Processo de Weibull)
- Modelo de falhas finitas, como o modelo de tempo de execução exponencial não homogêneo básico (ENHPP). Esse modelo assume uma diminuição linear na intensidade com cada detecção (e correção) de uma falha. Outros representantes desses modelos são o modelo exponencial expandido de Yamada-Osaki e o modelo de Crow.

Para um subconjunto distinto de testes durante o teste do subsistema e do sistema, o `modelo de tempo de execução exponencial não homogênio básico (ENHPP)` pode aproximar as estimativas de taxa de falhas com boa precisão. Para validar as previsões feitas no passado, as taxas informadas após o momento em que a previsão foi feita podem ser comparadas com as que foram extrapoladas. (Figura 9.4)

<div align="center">
  <img src="books/ebert_dumke/static/fig-9-4.png">
</div>

A confiabilidade do software em desenvolvimento e do software em operação está em algum lugar entre os dois modelos (modelo de falhas infinitas e falhas finitas). As falhas podem ocorrer como resultado da interação entre vários erros no código (dois erros em sequência pode acarretar em uma falha, por mais que nenhum individualmente gere um falha). Outro fenômeno que observamos nos sistemas de comunicação são as falhas dependentes de carga que normalmente ocorrem depois que as determinada parte do código é executada exaustivamente. Nesses casos, os processos de falhas individuais não seguem uma distribuição de Poisson, uma vez que a execução ou sequência de carregamento por si só não é um proceso de Poisson. Este padrão muitas vezes faz com que o software de comunicação falhe uma vez que o ambiente muda, embora o software pareça operar sem falhas durante o teste.

As falhas de software são reunidas e os bugs são detectados de tempos em tempos com base em uma análise de descrições de falhas acumuladas, resultando assim na detecção de bugs que causaram entre nenhuma e várias falhas diferentes. A detecção e correção de falhas atrasadas (não ocorrem no momento que é identificado) (o que é comum em sistemas enormes com milhões de linhas código), não são distribuições de Poisson.

Para tornar as coisas mais fáceis, a teoria fornece uma lei dos grandes números: conforme o tempo e, assim, as falhas se aproximam do infinito de tal forma que a chegada de qualquer falha é muito imporvável (ou seja, no campo), ocorrências sobrepostas convervem para um processo de Poisson.

O objetivo geral, obviamente, não é realizar uma previsão exata da taxa de falha, mas estar o mais próximo possível de uma margem distinta permitida pelos contratos do cliente ou pela capacidade de manutenção disponível. Um exemplo de um perfil de confiabilidade combinado usado na prática, resumido de váris modelos, é mostrado na figura abaixo.

<div align="center">
  <img src="books/ebert_dumke/static/fig-9-5.png">
</div>