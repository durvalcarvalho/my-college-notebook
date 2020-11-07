# Capítulo 13 - Confiabilidade


## 13.1. Introdução

Com o constante desenvolvimento da tecnologia, os sistemas computacionais têm sido requisitados em quase todas as áreas da atividade humana. Especificamente nos últimos anos, softwares específicos foram desenvolvidos para aplicações críticas, como sistemas de controle de usinas nucleares, sistemas de controle aeroespacial, controle de processos na área médica e muitas outras áreas de risco no campo industrial. A natureza de sistemas computacionais em termos de precisão de tempo e em termos de comportamento repetivivo faz do software ideal para áreas nas quais um simples engano pode causar efeitos extremamente danosos.

Essa crescente dependência em relação ao software tem conscientizado tanto os usuários, que cada vez mais exigem softwares confiáveis, como também a industria de software, no sentido de desenvolver produtos de alta qualidade.

O desenvolvimento de software que atende as exigências dos usuários, com o nível de confiabilidade exigido é um tarefa extremamente difícil. Essa dificuldade é devido o fato de software ser uma entidade lógica que não possui termos de valor concreto que definem a qualidade do produto.

A confiabilidade é uma característica que tem sido extensivamente considerada na análise da qualidade do software, pois se um software não é confiável, pouco importa se outras características da qualidade são aceitáveis.

Ao atribuir-se um grau de confiabilidade ao software, o objetivo é quantificar alguns aspectos desse software que, devido à presença inevitável de defeitos (bugs), está sujeito a falhas durante seu período de utilização. Assim, o estudo da confiabilidade de software caracteriza-se como uma abordagem analítica que está baseada nos conceitos de métricas, medidas e modelos.

De uma maneira geral, um sistema de software é dito confiável se desempenha corretamente suas funções especificadas por um longo período de execução e em um variedade de ambientes operacionais. Essencialmente, existem três maneiras de se alcançar um alto nível de confiabilidade:
- Evitar a introdução de defeitos durante o projeto e o desenvolvimento do programas.
- Fazer uso de estruturas tolerantes a defeitos
- Remover defeitos durante a fase de teste e depuração

As duas primeiras maneiras enquadram-se na abordagem construtiva: consistem em desenvolver software utilizando os métodos, as técnicas e as ferramentas disponíveis. Finalmente, a confiabilidade do software pode ser melhorada pelo teste e depuração, abordagem em que o software é submetido a um intenso processo dinâmico que objetiva a detecção e a remoção dos defeitos restantes.

A primeira consideração na análise de confiabilidade de software é como medir a confiabilidade. Várias métricas foram propostas para responder essa questão. Alguns autores sugerem associar a confiabilidade diretamente ao número de defeitos restantes no software. Assim, a atividade de teste de software é um método primário para se obter a medida de confiabilidade. Para tanto, torna-se necessária a coleta de dados de falhas. Essa coleta compreende:
- 1) Contagem de falhas para o rastreamento da quantidade de falhas observadas por unidade de tempo
- 2) Tempo médio entre falhas que faz o rastreamento dos intervalos entre falhas consecutivas.

De posse desses dados, a engenharia de confiabilidade de software pode desenvolver atividades de estimação e previsão.

A confiabilidade é definida como a probabilidade de que o software não falhe em um dado intervalo de tempo, em um dado ambiente. Logo, é uma medida importante para decidir sobre a liberação do software. A probabilidade de ocorrência de falha serve também como um preditor útil da confiabilidade corrente para o software em operação. Um software considerado altamente confiável quando pode ser utilizado sem receio em aplicações críticas. 

Ao contrário dos demais produtos físicos de engenharia, o software não envelhece e não sofre desgaste por ação do uso ou do tempo. No software defeitos podem ser introduzidos nas várias fases de desenvolvimento e são causados principalmente por problemas no projeto. O crescimento da confiabilidade do software resulta da descoberta e da eliminação de defeitos no software obtidos pela aplicação de um teste intensivo e de qualidade.

Quando um software é reparado, a sua confiabilidade pode tanto aumentar como diminuir, casos novos defeitos sejam inseridos durante o reparo. Assim, o objetivo da engenharia de confiabilidade de software é melhorar a confiabilidade, pois é entendido que o software sempre irá possuir defeitos (bugs).

## 13.2. Fundamentos de confiabilidade de software

A ocorrência de falhas em um software é um evento totalmente imprevisível e, desse modo, deve ser considerada um processo aleatório. Por isso, o estudo da confiabilidade de um sistema resume-se em aplicar a teoria de probabilidade na modelagem do processo de falhas do sistema e na predição da probabilidade de ocorrência de um sucesso.

A teoria de confiabilidade está estreitamente ligada à teoria de probabilidade, e, assim, a confiabilidade é uma característica da qualidade do software que pode ser expressa por meio de números entre 0 (não confiável) e 1 (totalmente confiável). O número de defeitos no software que provocaram as falhas determina uma confiabilidade estável no software. À medida que os defeitos são detectados e removidos, sem a inserção de novos defeitos, o software passa a ter uma menor intensidade de falhas e, por consequência, há um aumento na confiabilidade.

Considerando a ocorrência de falhas no software como um evento aleatório, a atribuição da confiabilidade está associada ao estudo de algumas variáveis aleatórias do processo de falhas. Como exemplo, a confiabilidade de um software pode estar associada ao tempo médio entre a ocorrência das falhas.

A confiabilidade informa se o software está sendo aperfeiçoado (falhando cada vez menos), na medida que se detectam e removem os defeitos. Se os tempos entre as falhas permanecem os mesmo, então a confiabilidade do software continua estável. Se o tempo entre as falhas aumentam, então tem-se um crescimento na confiabilidade do software.

### 13.2.1. Definições

A teoria sobre confiabilidade de software lida com métodos probabilísticos aplicados para analisar a ocorrência aleatória de falhas em um dado sistema de software. Nesta seção são apresentados alguns conceitos que formalizam a teoria da confiabilidade, tais  como: função Confiabilidade, função Taxa de Falhas, função de Falhas Acumuladas, função Intensidade de Falhas, Tempo Médio para Falhas (MTTF) e Tempo Médio entre Falhas (MTBF).

No estudo sobre confiabilidade de software, a variável aleatória de interesse pode ser o tempo T decorrido para a ocorrência de uma falha do software. Por conseqüência, a base dos resultados sobre confiabilidade estará relacionada ao estudo da variável aleatória T , mais especificamente, ao estudo das funções associadas à variável aleatória T, tais como função densidade de probabilidade f(t) e função distribuição de probabilidades acumuladas F(t).

A probabilidade de que haja uma falha no software em decorrência do tempo t é definida como:

<div align="center">
  <img src="books/eduardo_delamaro/static/img-13-0.png" width="500">
</div>

em que f(t) é a função densidade de probabilidade e F (t) é a função distribuição de probabilidades, da variável aleatória T . Por conseqüência, a probabilidade de que não ocorra falha no software até o tempo t é definida como:

<div align="center">
  <img src="books/eduardo_delamaro/static/img-13-1.png" width="500">
</div>



#### 13.2.1.1. Função Confiabilidade

Na literatura clássica, a definição sobre confiabilidade amplamente adotada é: probabilidade de operação livre de falhas de um software, em um tempo e ambiente especificados.

Assim, a função Confiabilidade, também chamada de função de sobrevivência de um software, é definida como:

<div align="center">
  <img src="books/eduardo_delamaro/static/img-13-2.png" width="500">
</div>

Quando uma base de tempo é determinada, as falhas no software podem ser expressas por várias funções, como: função Taxa de Talhas, função de Falhas Acumuladas, função Intensidade de Falhas, tempo médio para falhas (MTTF) e tempo médio entre falhas (MTBF).

Para determinar o comportamento de falhas no software, basta observar o comportamento de uma dessas funções. Ou seja, para determinar a forma funcional do modelo que representa o comportamento das falhas no software, é só determinar a forma funcional de apenas uma dessas funções. O comportamento das demais funções pode ser explicitamente determinado. Alguns modelos de confiabilidade de software são determinados por suposições no comportamento da taxa de falhas, outros são determinados por suposições no comportamento da função de Falhas Acumuladas.

#### 13.2.1.2. Função Taxa de Falhas

Para descrever o ritmo de ocorrência das falhas em um sistema, a taxa de falhas é um conceito bastante utilizado. Teoricamente, a taxa de falhas é definida como a probabilidade de que uma falha por unidade de tempo ocorra num intervalo [t, t + Δt], dado que o sistema não
falhou até o tempo t. Na prática, a taxa de falhas é a razão entre o incremento do número de falhas e o incremento de tempo correspondente. Assim, usando a probabilidade condicional, tem-se que:

<div align="center">
  <img src="books/eduardo_delamaro/static/img-13-3.png" width="500">
</div>

A taxa de falhas instantânea, Z(t), também conhecida como taxa de risco associada à variável aleatória T , é definida como:

<div align="center">
  <img src="books/eduardo_delamaro/static/img-13-4.png" width="500">
</div>

Ou seja, a taxa de risco é definida como o limite da taxa de falhas quando o intervalo Δt tende a zero (Δt → 0).

A taxa de risco é uma taxa de falhas instantânea no tempo t, dado que o sistema não falhou até o tempo t. Embora haja uma pequena diferença entre a taxa de falhas e a taxa de risco, normalmente usa-se Z(t) como taxa de falhas.

A taxa de falhas se altera ao longo do tempo de vida do sistema. A Figura 13.1 ilustra o comportamento da taxa de falhas de alguns sistemas.

A Região I, conhecida como fase de depuração, representa as falhas iniciais do sistema. Nessa região a taxa de falhas tende a decrescer com o tempo.

A Região II, conhecida como período de vida útil do sistema ou fase de operação, representa as falhas causadas por eventos aleatórios ou por condições de stress do sistema. Nessa região a taxa de falhas permanece constante com o tempo.

A Região III representa a fase de desgaste do sistema, caracterizada pelo crescimento na taxa de falhas em função do tempo.

<div align="center">
  <img src="books/eduardo_delamaro/static/fig-13-1.png" width="600">
</div>

A confiabilidade de software é semelhante à confiabilidade de hardware, tendo em vista que ambas são processos probabilísticos e podem ser descritas por distribuições de probabilidades. Contudo, a confiabilidade de software é diferente da confiabilidade de hardware no sentido de que o software não se desgasta com o tempo, ou seja, a confiabilidade não decresce com o tempo. Conseqüentemente, a Região III não se aplica à confiabilidade de software. No software, geralmente, a confiabilidade cresce na fase de teste e na fase de operação, desde que as falhas sejam removidas quando detectadas. No entanto, pode ocorrer um decréscimo na confiabilidade devido a alterações abruptas no ambiente de operação do sistema ou modificações incorretas na manutenção.

Considerando-se que o software é constantemente modificado em seu ciclo de vida, tornase inevitável a consideração de que a taxa de falhas seja variável.

Diferentemente dos defeitos de hardware que, na maioria das vezes, são defeitos físicos, os defeitos de software são defeitos de projeto, difíceis de visualizar, classificar, detectar e remover. Como resultado, a confiabilidade de software é muito mais difícil de se medir e analisar. Normalmente, a teoria de confiabilidade de hardware está fundamentada na análise de processos estacionários porque somente os defeitos físicos são considerados. Contudo, com o crescimento da complexidade dos sistemas e a introdução de defeitos no projeto, a teoria de confiabilidade de software baseada em processos estacionários torna-se inconveniente. Isso torna a confiabilidade de software um problema desafiante que requer o emprego de vários métodos.

A taxa de falhas ideal para o software é decrescente. A Figura 13.2 dá uma idéia de seu comportamento em função do tempo.

Ao se observar o comportamento da taxa de falhas em algum ponto, por meio de evidência estatística, é possível prever o comportamento da taxa de falhas em um tempo futuro. Com isso, os modelos de confiabilidade de software podem prever o tempo adicional necessário para o teste do software até que se atinja o objetivo especificado – a taxa de falhas desejada. Pode-se também estimar a confiabilidade ao término do teste.

<div align="center">
  <img src="books/eduardo_delamaro/static/fig-13-2.png" width="500">
</div>

Quando se considera crescimento de confiabilidade, uma medida usual é a confiabilidade condicional. Dado que o sistema teve n−1 falhas, a confiabilidade condicional é a função de sobrevivência associada à n-ésima falha do sistema. A confiabilidade condicional é de interesse quando o sistema está em fase de desenvolvimento, período em que se observa o tempo para a próxima falha. Quando o sistema está liberado e em fase operacional, o interesse passa a ser o intervalo de tempo livre de falhas e, nesse caso, os instantes de falha não são necessariamente condicionados às falhas anteriores. O interesse é a confiabilidade em um dado intervalo de tempo, independentemente do número de falhas ocorridas anteriormente.

#### 13.2.1.3. Função de Falhas Acumuladas

A função de Falhas Acumuladas, também denominada função Valor Médio, é uma maneira alternativa de caracterizar a ocorrência aleatória das falhas em um software. A função de Falhas Acumuladas descreve o crescimento da curva de Falhas Acumuladas e, assim, considera o número de falhas ocorridas no software até um tempo t. A função Valor Médio é uma maneira alternativa de representar o processo de falhas no software, e, assim, o comportamento futuro pode ser estimado por uma análise estatística do comportamento dessa curva de crescimento.

Teoricamente, o número de falhas acumuladas até o tempo t pode ser representado por uma variável aleatória M(t) com um valor médio μ(t). Isto é, μ(t) representa a função valor médio do processo aleatório.

A Figura 13.4 representa um comportamento típico da função Valor Médio.

O processo aleatório pode ser completamente especificado, assumindo-se uma distribuição de probabilidades para a variável aleatória M (t) para algum t.

Como M (t) assume somente valores inteiros, as correspondentes distribuições de probabilidades devem ser do tipo discretas. As distribuições de probabilidades Poisson e Binomial são bastante utilizadas para descrever o processo aleatório M(t).

<div align="center">
  <img src="books/eduardo_delamaro/static/fig-13-3.png" width="500">
</div>

#### 13.2.1.4. Função Intensidade de Falhas

A função Intensidade de Falhas λ(t) representa a taxa de variação instantânea da função Valor Médio. Isto é, representa o número de falhas ocorridas por unidade de tempo. Por exemplo, pode se dizer que houve 0,01 falha/hora ou então que houve uma falha a cada 100 horas.

A função Intensidade de Falhas representa a derivada da função Valor Médio e é um valor instantâneo. A Figura 13.5 ilustra o comportamento da função Intensidade de Falhas.

Observa-se que no início do teste do software a ocorrência de falhas é maior em uma unidade de tempo e, conseqüentemente, a função de Falhas Acumuladas ou função Valor Médio cresce rapidamente. À medida que o teste prossegue, o número de falhas por unidade de tempo tende a diminuir, ou seja, a função Valor Médio cresce mais lentamente. A taxa de variação da função Valor Médio tende a decrescer rapidamente conforme o teste procede. Com isso, a função Intensidade de Falhas tem um comportamento decrescente no tempo. 

#### 13.2.1.5. Tempo Médio para Falhas (MTTF)

A função Tempo Médio para Falhas, MTTF (Mean Time to Failure), representa o tempo esperado para a ocorrência da próxima falha, ou seja, é o tempo durante o qual o software funciona sem falhas. O MTTF é uma medida que pode ser utilizada para caracterizar o modelo de falhas de um sistema de software.

Suponha que um software esteja em teste e que tenham sido encontradas i − 1 falhas. Registrando-se os tempos entre as falhas como t1, t2, t3, ... ti−1, a média desses valores é o tempo médio antes de ocorrer a próxima falha. Um MTTF de 500 significa que uma falha pode ser esperada a cada 500 unidades de tempo.

Considere que cada defeito identificado tenha sido corrigido e que o sistema esteja novamente em execução. Pode-se utilizar Ti para denotar o tempo antes da próxima falha, que ainda será observada. Ti é uma variável aleatória e, quando se fazem declarações sobre a confiabilidade do software, fazem-se declarações de probabilidades sobre Ti.

### 13.2.2. Medição da Confiabilidade

Um meio simples de se medir a confiabilidade de um software é observar o tempo para a ocorrência da próxima falha. Certamente existe uma relação entre a confiabilidade do software e o tempo médio para a ocorrência da próxima falha. Pode-se imaginar que, à medida que o software se torna mais confiável, o tempo médio para a ocorrência da próxima falha tende a aumentar. Da mesma forma, se os tempos para a ocorrência da próxima falha são pequenos, isso significa que o software está falhando bastante e, por conseqüência, sua confiabilidade é baixa. Por outro lado, se os tempos para ocorrência da próxima falha são grandes, o software falha pouco e, por conseqüência, sua confiabilidade é alta. Logicamente, nessa maneira simples de medir a confiabilidade de um software, não se dá a devida atenção às suposições no comportamento das falhas no software.

Nesse contexto, o MTTF é próximo de zero quando a taxa de falhas do software é grande e próximo de 1 quando a taxa de falhas do software é pequena. Utilizando essa relação, pode-se calcular a medida da confiabilidade de um software como: 

<div align="center">
  <img src="books/eduardo_delamaro/static/img-13-5.png" >
</div>

Em um processo de teste do software, à medida que ocorrem as falhas e removem-se os defeitos, a confiabilidade é uma medida que informa se o software está sendo ou não aperfeiçoado. Se os tempos entre as falhas permanecem os mesmos, então tem-se uma con- fiabilidade estável. Se os tempos entre as falhas aumentam, então tem-se um crescimento da confiabilidade do software.

A confiabilidade do software também pode ser medida quando se conhece a distribuição de probabilidades de ocorrência das falhas. Isto é, quando o comportamento da ocorrência das falhas pode ser descrito com uma função Densidade de Probabilidade f(t). Conhecida a função f(t), a confiabilidade pode ser calculada pela Equação (13.2).

Pode-se desejar, também, saber a probabilidade de que o software opere sem falhas em um intervalo de tempo [t1 , t2]. Assim, a confiabilidade do software nesse intervalo pode ser calculada como:

<div align="center">
  <img src="books/eduardo_delamaro/static/img-13-6.png" width="300">
</div>

Pode ser mostrado que:

<div align="center">
  <img src="books/eduardo_delamaro/static/img-13-7.png" >
</div>

### 13.2.3. Função de Confiabilidade

A modelagem sobre a confiabilidade de software normalmente envolve a utilização de uma distribuição de probabilidades do tempo para ocorrência das falhas no software. Dependendo do conjunto de suposições, a função de confiabilidade do modelo pode envolver uma distribuição de probabilidades desconhecida sobre o tempo de falhas no software. Contudo, de uma maneira geral, a maioria dos modelos é fundamentada em distribuições de probabilida des conhecidas na literatura.

Assim, nesta subseção são apresentadas as principais distribuições de probabilidades utilizadas em modelos de confiabilidade de software.

#### 13.2.3.1. Distribuição exponencial

A distribuição exponencial é a distribuição de probabilidades mais conhecida e mais amplamente utilizada devido à sua simplicidade e grande aplicabilidade. A exponencial é um bom modelo de distribuição de probabilidades para descrever o tempo T entre a ocorrência de dois eventos consecutivos.

As funções Densidade de Probabilidade f (t) e Distribuição de Probabilidade F (t) têm as formas:

<div align="center">
  <img src="books/eduardo_delamaro/static/img-13-8.png" >
</div>

<div align="center">
  <img src="books/eduardo_delamaro/static/img-13-9.png" >
</div>

em que t > 0 e λ > 0, λ é um parâmetro. A Figura 13.6 ilustra o comportamento da função Densidade de Probabilidades Exponencial.

<div align="center">
  <img src="books/eduardo_delamaro/static/fig-13-6.png" width="600">
</div>

A região hachurada na Figura 13.6 representa a probabilidade de não ocorrência de falhas até o tempo t o . Observa-se que para pequenos intervalos de tempo é grande a probabilidade de não ocorrência de falhas. Por outro lado, para grandes intervalos de tempo é pequena a probabilidade de não ocorrência de falhas.

O emprego da distribuição exponencial deve ter a hipótese de que o sistema tem uma taxa de falhas constante. Seu uso é recomendado quando o software tem uma taxa de falhas constante, isto é, na Região II da Figura 13.1 anteriormente discutida.

Para uma certa classe de modelos de confiabilidade de software, a suposição é que o número de falhas acumuladas em um tempo t segue uma distribuição de Poisson, ou seja, é regida por um processo de Poisson, e que o tempo entre falhas segue uma distribuição exponencial. Dessa forma, muitos modelos de confiabilidade de software admitem que o tempo de falha do software ou então o tempo entre falhas segue uma distribuição exponencial.

É evidente que a distribuição de probabilidades não diz quando as falhas ocorrem. No entanto, ela fornece informações sobre o processo aleatório de ocorrência das falhas.

#### 13.2.3.2. Distribuição de Weibull

A distribuição de probabilidades de Weibull, como outras distribuições, tem uma grande aplicação em confiabilidade devido à sua adaptabilidade. Dependendo dos valores dos parâmetros, pode-se ajustar a muitos conjuntos de dados sobre falhas. Ao utilizar essa distribuição, assume-se que, no processo de falhas do software, a variável aleatória T (tempo entre falhas) segue a distribuição de Weibull.

<div align="center">
  <img src="books/eduardo_delamaro/static/fig-13-7.png" >
</div>

#### 13.2.3.3. Distribuição Gamma

A distribuição Gamma tem propriedades semelhantes às da distribuição de Weibull. Com variações nos parâmetros, essa distribuição pode-se ajustar a vários conjuntos de dados de falhas. A função Densidade de Probabilidades f(t) tem a forma:

<div align="center">
  <img src="books/eduardo_delamaro/static/fig-13-8.png" >
</div>

## 13.3. Modelos de Confiabilidade

Na seção anterior foram vistos os fundamentos da teoria de confiabilidade de software, requisito necessário para o bom entendimento dos modelos de confiabilidade de software. Nesta seção são discutidos aspectos gerais sobre modelos de confiabilidade de software, iniciando com a fundamentação básica da modelagem de confiabilidade de software. As principais classificações dos modelos de confiabilidade de software existentes na literatura são apresentadas de acordo com a visão de cada autor. As três principais abordagens de modelagem de confiabilidade de software são também apresentadas.

### 13.3.1. Modelagem

Um dos aspectos particulares da engenharia de confiabilidade de software que tem recebido a maior atenção é a modelagem da confiabilidade de software. Para se modelar a confiabilidade de software é necessário considerar os principais fatores que afetam a confiabilidade, que são: a introdução de defeitos, a remoção de defeitos e, finalmente, o ambiente no qual o software é executado.

A introdução de defeitos depende das características do código desenvolvido (código criado inicialmente ou código modificado) e das características do processo de desenvolvimento. As características do processo de desenvolvimento incluem as técnicas de desenvolvimento de software, as ferramentas utilizadas e, por fim, o nível de experiência da equipe de desenvolvimento. Além disso, como Musa e Okumoto observaram, defeitos em software somente podem ser definidos quando são descobertos por meio de uma falha e, assim, não faz sentido contar o número de defeitos em um programa sem que tal programa tenha sido executado por um longo período de tempo. Em geral, muitos pesquisadores de confiabilidade de software têm considerado esse problema modelando a falha no software em vez de defeitos no software.

A remoção de defeitos no software depende do tempo de operação do software, do perfil operacional e da qualidade da atividade de reparos. Alguns pesquisadores contestam essa dependência em relação ao tempo, afirmando que observar o comportamento do software em função do tempo não faz sentido se não houver o controle do que está sendo executado no código. A observação do tempo é uma herança da confiabilidade de hardware, na qual o tempo é um fator importante do comportamento. O ambiente de operação do software depende diretamente do perfil operacional do usuário.

Dado que alguns fatores são de natureza probabilística e operam no tempo, os modelos de confiabilidade de software geralmente são formulados em termos de processos aleatórios. Em termos gerais, os modelos se distinguem pela distribuição de probabilidade do tempo entre falhas ou distribuição do número de falhas observadas e, também, pela natureza da variação do processo aleatório com o tempo.

Um modelo matemático é chamado de modelo de confiabilidade de software se for utilizado para obter uma medida da confiabilidade do software. Todos os modelos matemáticos de confiabilidade de software são de natureza probabilística e, assim, tentam, de algum modo, especificar a probabilidade de ocorrência de falhas do software. O objetivo final é quantificar a confiabilidade do software de uma maneira tão precisa quanto possível.

Um modelo de confiabilidade de software especifica a forma funcional da dependência do processo de falhas sobre os fatores mencionados, isto é, faz uma descrição probabilística precisa da confiabilidade baseada nas suposições a priori sobre esses fatores que afetam a confiabilidade e, também, baseada nos resultados obtidos pelos dados experimentais. Várias são as formas matemáticas para se descrever o processo de falhas. Uma forma específica pode ser determinada de uma maneira geral ao se estabelecerem os valores dos parâmetros do modelo por estimação – aplicação de procedimentos de inferência estatística aplicados aos dados de falhas; ou por predição – determinação das propriedades do software e do processo de desenvolvimento (pode ser feita antes da execução do software).

Sempre existe uma incerteza na determinação de uma forma específica. Assim, geralmente se expressam os parâmetros em termos de intervalos de confiança. Uma vez que a forma específica do modelo foi determinada, algumas características do processo de falhas podem ser determinadas. Alguns modelos apresentam uma expressão analítica para essas características, que são:

- 1. o número médio de falhas observadas em algum ponto no tempo;
- 2. o número médio de falhas em um intervalo de tempo;
- 3. a intensidade de falhas em algum ponto no tempo;
- 4. a distribuição de probabilidade do tempo entre falhas.

A predição do comportamento futuro pressupõe que os valores dos parâmetros do modelo não se alteram nos próximos períodos. De um modo geral, os modelos de confiabilidade de software estão baseados em uma execução estável do software em um ambiente constante.

As medidas de confiabilidade de software podem ser de grande valor para os engenheiros de software, para os gerentes e para os usuários. Com essas medidas, pode-se avaliar o status de desenvolvimento durante as fases de um projeto e tem-se a possibilidade de monitorar o desempenho operacional do software, podendo-se, ainda, controlar as alterações feitas no software. Finalmente, o entendimento quantitativo da qualidade do software e dos vários fatores que afetam a qualidade enriquece o conhecimento dos processos de desenvolvimento e dos produtos de software.

No entanto, deve ser ressaltado que muitos dos modelos existentes na literatura são testados com dados simulados ou com dados reais que, na maioria das vezes, não foram coletados para tal propósito. O resultado é que algumas suposições básicas desses modelos ou abordagens são violadas. Além disso, é importante salientar que a modelagem de confiabilidade de software é apenas uma das muitas ferramentas da engenharia de software. Como tal, a modelagem não responde a todos os questionamentos relativos à gerência do software. A modelagem de confiabilidade deve ser encarada como uma técnica adicional que ajuda a fazer um julgamento realístico sobre o status do software. Devido às controvérsias existentes sobre qual é o melhor modelo e por causa da incerteza sobre o desempenho das abordagens sobre a modelagem da confiabilidade, deve ser enfatizado que, entre os modelos existentes, recomenda-se aplicar aquele que melhor se ajusta aos dados. A estimativa de confiabilidade pode ser utilizada como mais uma fonte de informação na determinação do status do software.

### 13.3.2. Classificação de Modelos de Confiabilidade

Nesta subseção são apresentadas algumas formas de classificação dos modelos de confiabilidade de software. Cada autor adota um ponto de vista diferente para fazer sua classificação, mas algumas concordâncias têm estreita relação entre si. 

Schick e Wolverton distinguem duas abordagens na modelagem de confiabilidade de software:
- abordagem baseada no domínio dos dados de entrada;
- abordagem baseada no domínio do tempo.

Ramamoorthy e Bastani apresentam um esquema de classificação no qual os modelos se aplicam nas fases do ciclo de vida do sistema. Isto é, modelos aplicáveis na fase de desenvolvimento, na fase de validação, na fase de operação, na fase de manutenção e, finalmente, modelos que se aplicam para medir a correção do software. Nesta classificação, alguns modelos se aplicam a mais de uma fase.

Goel classifica os modelos segundo:
- 1. A natureza do processo de falhas
  - (a) Modelos baseados no tempo entre falhas;
  - (b) Modelos baseados no número de falhas num intervalo de tempo.
- 2. A forma de aplicação dos modelos
  - (a) Modelos de implante de defeitos;
  - (b) Modelos baseados no domínio dos dados de entrada.

Mellor classifica os modelos de confiabilidade de acordo com as hipóteses sobre o mecanismo de falhas e com a estrutura matemática: modelos estruturais, que permitem a combinação da confiabilidade dos módulos na obtenção da confiabilidade global do sistema, e modelos que levam em conta somente o comportamento global do sistema. Nessa segunda classificação os modelos se dividem em modelos de tempo entre falhas e modelos que interpretam falhas como a manifestação de defeitos do sistema, supondo que cada defeito dá origem a uma falha com uma certa taxa.

Musa e Okumoto fazem uma classificação dos modelos em função de cinco atributos diferentes:
- 1. domínio do tempo: tempo cronológico e tempo de execução;
- 2. categoria finita ou infinita: característica do modelo que se relaciona ao número total de falhas que pode ser observado em um tempo infinito de teste;
- 3. tipo: característica do modelo que se relaciona à distribuição do número de falhas observadas no tempo t. Dois tipos de distribuição importantes são Binomial e Poisson;
- 4. classe (somente para modelos de categoria finita): característica do modelo que se relaciona com a forma funcional da intensidade de falhas expressa em termos do tempo (vide a função λ(t) – função Intensidade de Falhas na Equação (13.8)). As principais 
classes são: Exponencial, Weibull, Pareto e Gamma;
- 5. família (somente para modelos de categoria infinita): característica do modelo que se relaciona à forma funcional da intensidade de falhas expressa em termos do número esperado de falhas observadas (λ(μ(t))). As principais famílias são: Geométrica, Linear Inversa, Polinomial Inversa e a família Potência.

Independentemente de qualquer classificação, três abordagens são identificadas na literatura: modelos de implante de defeitos, modelos baseados no domínio dos dados e modelos baseados no domínio do tempo.

## 13.4. Principais Modelos de Confiabilidade

Nesta seção são apresentados alguns dos mais importantes modelos de confiabilidade de software amplamente citados na literatura, tanto do ponto de vista histórico quanto de suas aplicações. Os modelos são apresentados considerando-se as três principais abordagens anteriormente identificadas. São apresentados também os modelos baseados na cobertura do teste, uma abordagem recente de modelos de confiabilidade de software.

O propósito desta seção é apresentar um levantamento dos principais modelos, considerando as abordagens existentes de modelagem e estimação da confiabilidade de software. Não se pretende esgotar o assunto, mas, em uma forma sucinta, apresentar as suposições fundamentais do modelo, os dados necessários para sua aplicação e, finalmente, sua forma funcional. Não se apresentam os detalhes sobre a estimação dos parâmetros de cada modelo nem a dedução matemática de sua forma funcional.

<div align="center">
  <img src="books/eduardo_delamaro/static/tabela-13-5.png" width="700">
</div>

<div align="center">
  <img src="books/eduardo_delamaro/static/tabela-13-6.png" width="700">
</div>

### 13.4.1. Modelos de Implante de Defeitos

Nesta subseção são apresentados os modelos que se baseiam na inserção de defeitos no software para estimar sua confiabilidade. Essa abordagem, proposta inicialmente por Mills, envolve implantar, em um dado programa, um certo número de defeitos. A suposição é que a distribuição dos defeitos implantados é a mesma dos defeitos inerentes do programa. Assim, o programa é entregue a uma equipe de teste para validação e verificação. No procedimento de teste, alguns dos defeitos descobertos são defeitos implantados e outros são defeitos reais do programa. Se for feita a contagem desses defeitos, o número total de defeitos inerentes pode ser estimado. Em particular, suponha que 100 defeitos foram implantados em um programa. Após um período de teste, 20 defeitos implantados e 10 defeitos inerentes foram detectados. Os defeitos implantados que foram descobertos representam 20% do total. Assume-se que os 10 defeitos inerentes descobertos também representam 20% do total. Portanto, o número total de defeitos inerentes do programa será estimado em 50.

Uma outra técnica proposta por Rudner emprega o procedimento de teste de dois estágios. O programa é entregue a uma equipe de teste que descobre n defeitos. Uma segunda equipe testa novamente o programa e descobre r defeitos, sendo que um número k desses defeitos também foi detectado pela primeira equipe. Assim, usando uma distribuição Hipergeométrica, o estimador de máxima verossimilhança para o número total, N , de defeitos no programa tem a forma:

<div align="center">
  <img src="books/eduardo_delamaro/static/img-13-10.png" width="100">
</div>

Basin propõe a seguinte técnica: supõe que um programa consiste em M comandos, dos quais n são aleatoriamente selecionados para se introduzirem defeitos. Se r comandos são escolhidos ao acaso e testados, sendo k1 com defeitos inerentes e k2 com defeitos implantados, então pode ser mostrado que o estimador de máxima verossimilhança do número total N de defeitos no programa é dado por:

<div align="center">
  <img src="books/eduardo_delamaro/static/img-13-11.png" >
</div>

Algumas críticas são feitas a essas técnicas. Na prática, não é tão simples implantar defeitos artificiais que sejam equivalentes aos defeitos inerentes em termos de dificuldade de detecção. Geralmente, é muito mais simples detectar os defeitos que foram implantados. Com isso, o número de defeitos inerentes pode ser subestimado. Outro problema é que dificilmente pode-se dar ao luxo de dispor de duas equipes de teste para aplicar a técnica de teste de dois estágios. Além disso, essas técnicas não proporcionam uma medida de confiabilidade para o software dependente do tempo. A inconveniência, ou não, dessa dependência do tempo será discutida posteriormente em modelos baseados em cobertura do teste.

### 13.4.2. Modelos Baseados no Domínio dos Dados

Nesta subseção são apresentados os modelos que se baseiam no particionamento do domínio dos dados de entrada do software para se estimar a sua confiabilidade. Essa abordagem inclui procedimentos que estimam a confiabilidade corrente do programa estritamente baseada no número observado de execuções com sucesso (execuções sem falhas), em relação ao número total de execuções do programa. Nesta categoria, incluem-se, também, os procedimentos que usam dados de teste selecionados de acordo com a distribuição de probabilidades do perfil operacional de uso do programa. O domínio de entrada do programa é dividido em classes, e as probabilidades de cada classe são fixadas de acordo com o perfil de uso do programa. Como exemplo, vamos supor que o domínio de entrada de um programa seja o conjunto dos números inteiros positivos. Sabe-se antecipadamente que 25%, 35%, 30% e 10% são, respectivamente, as porcentagens dos dados de entradas referentes aos intervalos [0 – 1500], [1501 – 2500], [2501 – 3500] e [3501 e mais ]. Assim, em uma amostra aleatória de 200 casos de teste, 50, 70, 60 e 20 devem ser os números de casos de teste, respectivamentes selecionados, para representar cada um dos intervalos. Ou seja, a distribuição de probabilidades de seleção seria 0,25, 0,35, 0,30 e 0,1. A confiabilidade estimada para o programa será o número de execuções com sucesso sobre o valor 200. De uma forma geral, se N entradas são selecionadas de acordo com o perfil operacional e S são as execuções com sucesso (sem falhas), então a estimativa da confiabilidade do programa é dada por:

<div align="center">
  <img src="books/eduardo_delamaro/static/img-13-12.png" width="100">
</div>

Nesta abordagem, vários pesquisadores propuseram variações na forma de se estimar a confiabilidade.

<div align="center">
  <img src="books/eduardo_delamaro/static/img-13-13.png" width="100">
</div>
<div align="center">
  <img src="books/eduardo_delamaro/static/img-13-14.png" width="100">
</div>

em que L é o número de instruções de máquina submetido e W é o número médio de instruções por bits. Essa modificação normaliza o estimador pelo tamanho do programa e pelo tipo de máquina utilizada.

Nelson propôs um modelo no qual n entradas são aleatoriamente selecionadas do domínio de entrada E = E i , i = 1, 2, 3, . . . , N ,sendo cada E i o conjunto de dados necessários para se fazer uma execução do programa. A amostra aleatória das n entradas é feita de acordo com a distribuição de probabilidades P i . O conjunto das probabilidades Pi; i = 1, 2, 3, ... , N é o perfil operacional do usuário. Se n e é o número de entradas cujas execuções resultam em falhas, então um estimador não viciado para a confiabilidade do software será:

<div align="center">
  <img src="books/eduardo_delamaro/static/img-13-15.png" >
</div>

Diversas outras maneiras de se calcular a estimativa da confiabilidade do programa foi proposta por outros autores como: Brown e Lipow, Corcoran, Weingarten e Zehna, e etc.

### 13.4.3. Modelos Baseados no Domínio dos Tempo

Nesta subseção são apresentados os modelos que se baseiam na ocorrência de falhas do software ao longo do tempo para se estimar a confiabilidade.

A modelagem da confiabilidade baseada no domínio do tempo é a abordagem que tem recebido maior ênfase na pesquisa. Essa abordagem utiliza o tempo de ocorrência entre falhas ou o número de falhas ocorridos em um intervalo de tempo, para modelar o processo de falhas no software. Em geral, os modelos podem ser utilizados para predizer o tempo até a ocorrência da próxima falha ou o número esperado de falhas no próximo intervalo de tempo. Originalmente, esses modelos foram baseados nos conceitos sobre confiabilidade de hardware e, assim, muitos termos usados em confiabilidade de hardware são, também, usados em confiabilidade de software.

Nesta abordagem muitos modelos já foram propostos e várias extensões foram sugeridas. No entanto, existe uma grande controvérsia sobre qual é o melhor modelo para um conjunto de dados de falhas em um software. Alguns estudos foram realizados usando dados simulados sobre falhas, outros foram realizados com dados reais. A conclusão é que se deve aplicar o maior número possível de modelos em um conjunto de dados e escolher o melhor com base em critérios estatísticos.

Os conceitos para a modelagem de confiabilidade de hardware foram adaptados à modelagem de confiabilidade de software, o que não implica que o comportamento do software seja semelhante ao comportamento do hardware. Pelo contrário, o software não se desgasta com o uso. No processo de reprodução do software não existe a geração aleatória de novos defeitos nas cópias. As duplicatas são idênticas. Além disso, o software não se altera durante o uso nem se desgasta pela ação do tempo. O decorrer do tempo não causa defeitos no software e, assim, a geração de defeitos ou mesmo a ocorrência de falhas no software independem do tempo.

Por essas razões, um grande número de pesquisadores tem questionado fortemente a abordagem que utiliza a variável tempo no processo de modelagem da confiabilidade de software.

Nesta abordagem, os modelos encontram-se classificados em duas classes básicas, dependendo do tipo de dados de falhas que se utiliza:
- falhas por intervalo de tempo;
- tempo entre falhas;

Essas classes, contudo, não são disjuntas. Existem modelos que aceitam qualquer um dos dois tipos de dados. Além disso, os dados podem ser transformados de um tipo para outro, adaptando-se a qualquer uma das classes de modelos.

De acordo com a classificação de Musa existem dois tipos importantes de modelos cuja categoria de falhas é finita: o tipo Poisson e o tipo Binomial.

Para os modelos do tipo Poisson, considera-se que o processo de falhas no software segue um processo de Poisson no tempo. Assim, a variável aleatória M(t) representa o número de falhas observadas no tempo t com um valor médio dado por μ(t). Ou seja, μ(t) = E[M (t)].

Para os modelos do tipo Binomial, as seguintes suposições são consideradas:
- 1. existe um número fixo N de defeitos no software no início do teste;
- 2. quando um defeito é detectado, é imediatamente removido;
- 3. usando a notação de Musa, se Ta é a variável aleatória que denota o tempo de falha de um defeito “a”, então as variáveis T a são independentes e identicamente distribuídas para todos os defeitos.

Nota-se que, nesse caso, a função de Distribuição de Probabilidades F a (t), a função Densidade de Probabilidades, f a (t) e a Taxa de Falhas Z a (t) são as mesmas para todos os defeitos.

Cada um dos modelos que serão descritos nesta abordagem foram criados com base em suposições específicas, mas existem algumas suposições padrão comuns à maioria dos modelos, tais como:
- 1. o software é operado de uma maneira semelhante em que as predições da confiabilidade são feitas;
- 2. todos os defeitos de uma classe de dificuldade têm chance idêntica de serem encontrados;
- 3. as falhas são independentes.

A suposição 1 é para garantir que as estimativas do modelo, usando-se os dados coletados no ambiente de teste, sejam válidas quando utilizadas no ambiente de operação do software. A suposição 2 garante que todas as falhas têm as mesmas propriedades em suas distribuições. Finalmente, a suposição 3 permite que os estimadores dos parâmetros sejam calculados utilizando-se o método da máxima verossimilhança.

#### 13.4.3.1. Modelo de Weibull

Um dos modelos mais amplamente utilizados para se modelar a confiabilidade de hardware  é a distribuição de Weibull. Desde que vários conceitos foram adaptados para software, esse foi um dos primeiros modelos usados para se modelar a confiabilidade de software. Devido à natureza da distribuição de Weibull, este modelo pode ser usado em situações nas quais a taxa de falhas seja crescente, decrescente ou mesmo constante, dependendo do valor do parâmetro da distribuição. Segundo a classificação adotada por Musa, este modelo pertence à categoria de falhas finita, de classe Weibull e de tipo Binomial.

Suposições do modelo:
- 1. o software é operado de maneira semelhante àquela em que as predições da confiabilidade são feitas;
- 2. todos os defeitos de uma classe de dificuldade têm chance idêntica de serem encontrados;
- 3. as falhas, quando os defeitos são detectados, são independentes;
- 4. existe um número N de defeitos no software no início do teste;
- 5. o tempo de falha de um defeito “a”, denotado como T a , tem uma distribuição de probabilidades Weibull com parâmetros α e β;
- 6. os números de defeitos f1, f2, f3, ..., fn detectados em cada um dos intervalos de tempo (t0 = 0, t1), (t1, t2), ..., (ti , ti−1), ..., (tn−1 , tn) são independentes.

Os dados necessários para a aplicação desse modelo são:
- a) o número de defeitos em cada intervalo de tempo, ou seja, os fi;
- b) o tamanho de cada intervalo de tempo em que o software é testado, isto é, os ti.

#### 13.4.3.2. Modelo de Jelinski-Moranda

Um dos primeiros modelos propostos e ainda muito utilizado é o de Jelinski-Moranda, desenvolvido na McDonnell Douglas Astronautics Company. Esse modelo foi criado para o projeto Apollo, e vários outros modelos são pequenas variações desse modelo inicial.

A idéia básica é que o tempo entre falhas segue uma distribuição exponencial cujo parâmetro é proporcional ao número de falhas restantes no software. Assim, o tempo médio entre a i-1 e i-ésima falha é dado por 1/(θ(N −i+1)), em que N é o número de falhas no software no início do teste e o parâmetro θ é a constante de proporcionalidade. Isso indica que o impacto da remoção de cada defeito é sempre o mesmo.

De acordo com a classificação de Musa, esse modelo é de categoria de falhas finita, de classe exponencial e do tipo Binomial. O modelo de Jelinski-Moranda está baseado nas seguintes suposições:
- 1. o software é operado de maneira semelhante àquela em que as predições da confiabilidade são feitas;
- 2. todos os defeitos de uma classe de dificuldade têm chance idêntica de serem encontrados;
- 3. as falhas, quando os defeitos são detectados, são independentes;
- 4. a taxa de detecção de defeitos é proporcional ao número de defeitos correntes no software;
- 5. a taxa de detecção de defeitos permanece constante no intervalo entre a ocorrência de falhas;
- 6. um defeito é instantaneamente removido sem a introdução de novos defeitos no software

Os dados necessários para se utilizar esse modelo são:
- a) o intervalo de tempo entre falhas x1, x2, ..., xn; ou
- b) o tempo em que o software falhou, t1, t2, ..., tn, para xi = ti - ti−1, i = 1, 2, ..., n, em que t 0 = 0.


#### 13.4.3.2. Modelo geométrico

O modelo geométrico foi proposto por Moranda e é uma variação do modelo DeEutrophication de Jelinski-Moranda. Este é um modelo interessante porque, de modo diferente dos modelos anteriormente discutidos, não assume um número fixo de defeitos no software nem assume que as falhas tenham a mesma probabilidade de ocorrência. O modelo assume que, com o progresso da depuração, os defeitos tornam-se mais difíceis de ser detectados. O tempo entre falhas é considerado como tendo uma distribuição exponencial cuja média decresce em uma forma geométrica.

Inicialmente, a taxa de falhas assume o valor de uma constante D e decresce geometricamente quando as falhas ocorrem. O modelo reflete o grande impacto das primeiras falhas e a difícil redução da taxa nas últimas falhas. O decréscimo na taxa de falhas torna-se menor à medida que os defeitos são detectados.

- 1. o software é operado de uma maneira semelhante em que as predições da confiabilidade são feitas;
- 2. todos os defeitos de uma classe de dificuldade têm chance idêntica de serem encontrados;
- 3. as falhas, quando os defeitos são detectados, são independentes;
- 4. a taxa de detecção de defeitos forma uma progressão geométrica e é constante entre a detecção dos defeitos
- 5. existe um número infinito de defeitos no software
- 6. o tempo entre a detecção de defeitos segue uma distribuição exponencial

Observa-se que, de acordo com a classificação de Musa, esse modelo é de categoria de falhas infinita e da família geométrica. 

Os dados necessários à aplicação deste modelo são:
- a) os tempos de ocorrência das falhas, ti;
- b) os tempos entre as ocorrências de falhas, xi (xi = ti − ti−1).

### 13.4.4. Modelos baseados em cobertura de teste

A estimação de confiabilidade de software tem a sua importância por várias razões bem conhecidas na literatura. Nesse sentido, vários são os modelos criados para a estimação de confiabilidade de software. No entanto, todos os modelos propostos são formulados e fundamentados em uma abordagem de teste funcional, ou teste caixa preta, nos quais a maior preocupação é a obtenção de uma forma funcional que explique o comportamento das falhas no software. Nenhum dos modelos até agora apresentados utiliza a informação sobre a cobertura do código.

A utilização da análise de cobertura dos elementos requeridos de um critério de teste estrutural tem a vantagem de que, no decorrer do teste, obtém-se a informação sobre o percentual do código exercitado durante o teste. Uma outra vantagem é a possibilidade de avaliar o problema da superestimação da confiabilidade do software criado pelo efeito de saturação do critério de teste.

Nesse contexto, os modelos de confiabilidade apresentados a seguir utilizam a informação da cobertura do critério de teste como um parâmetro próprio do modelo, isto é, a informação da cobertura é utilizada diretamente na forma funcional do modelo de confiabilidade.

Os modelos de confiabilidade anteriormente apresentados baseiam-se no tempo de teste do software. Nos modelos de confiabilidade baseados em cobertura supõe-se que a execução de um dado de teste corresponde a uma unidade de tempo de execução do software. A informação da cobertura obtida é diretamente utilizada no processo de modelagem da confiabilidade.

Malaya faz essa mesma suposição quando cria um modelo que relaciona a cobertura do código com número de dados de teste para avaliar a confiabilidade do software. Trata-se de um modelo que explica a cobertura em função dos dados de teste. Da mesma forma, Chen também faz essa suposição quando utiliza a informação da cobertura para definir um fator a ser utilizado nos tradicionais modelos de confiabilidade com a finalidade de corrigir a confiabilidade estimada por esses modelos. Chen et al. também relatam o desenvolvimento de um trabalho que envolve a relação entre cobertura e confiabilidade.

Trabalhos recentes também abordam o tratamento da confiabilidade de software por meio da informação sobre a cobertura atingida durante a execução do teste. Malaiya et al. propõem um modelo que relaciona uma medida da cobertura do teste diretamente com a cobertura de defeitos. Chen, Lyu e Wong propõem uma abordagem para a predição de falhas de software durante sua operação por meio de medições de tempo entre casos de teste e de cobertura de código. Pham e Zhang propõem um modelo de confiabilidade de software baseado em um processo não homogêneo de Poisson que incorpora a informação de cobertura de teste para estimar e prever quantitativamente a confiabilidade de produtos de software.

A seguir é descrito um modelo de confiabilidade de software que faz uso da informação da cobertura do código atingida durante o teste para estimar e prever diretamente a confiabilidade do software.

#### 13.4.4.1. Modelo tipo Binomial baseado em cobertura – MBBC

O modelo de crescimento de confiabilidade tipo Binomial baseado em cobertura foi proposto em 1997 por Crespo. Os modelos tipo Binomial são caracterizados pela forma funcional da taxa de falhas por defeito “a”, Za(n), em que n é o número de dados de teste aplicados para se revelar o defeito “a”.

Neste modelo, a taxa de falhas Za(n) é proporcional às seguintes medidas:
- a) Número de dados de teste aplicados no software até a ocorrência da falha provocada pelo defeito “a”.
- b) Complemento da cobertura alcançada no teste com a aplicação dos dados de teste até a ocorrência da falha provocada pelo defeito “a”.
- c) Peso do critério de teste utilizado como estratégia para a geração dos dados de teste.

O modelo tipo Binomial está fundamentado nas seguintes suposições:
- 1. o software é testado nas mesmas condições quando utilizado pelo usuário;
- 2. todos os defeitos de uma classe de dificuldade têm chance idêntica de serem encontrados;
- 3. os defeitos 1, 2, ..., k detectados, respectivamente, em cada um dos intervalos (0; n1), (n1; n2), (n2; n3), ..., (nk−1; nk) são independentes;
- 4. existe um número N de defeitos no software no início do teste;
- 5. a cobertura dos elementos requeridos pelo critério de seleção utilizado na avaliação dos dados é calculada à medida que os dados de teste são aplicados, a cada ocorrência de falha;
- 6. a taxa de falhas condicional tem a seguinte forma funcional:

<div align="center">
  <img src="books/eduardo_delamaro/static/img-13-15.png" width="150">
</div>

em que:
- αi = α0 + α1ci é a cobertura normalizada, c i é o complemento da cobertura medida atingida com a aplicação dos ni dados de teste, 0 ≤ ci ≤ 1;
- N é o número de defeitos no software no início do teste;
- i é a ordem de ocorrência das falhas, isto é, i = 1, 2, 3, ..., N.

O peso do critério de seleção utilizado no teste condiciona o comportamento da taxa de falhas do software. Sendo a função Confiabilidade relacionada à taxa de falhas, significa que a adoção de diferentes critérios conduziria a diferentes previsões do comportamento futuro do software. Dessa forma, objetivando padronizar as estimativas geradas pelo modelo, independentemente de qualquer critério, é justificado o uso da cobertura normalizada no lugar da cobertura medida no teste.

O objetivo de se utilizar a cobertura normalizada no lugar da cobertura medida é para garantir a padronização dos resultados obtidos pelo modelo quando se aplica qualquer um dos critérios de teste. Em outras palavras, qualquer que seja o critério de teste utilizado, a cobertura medida será sempre normalizada pelos parâmetros α0 e α1 , garantindo a obtenção dos mesmos resultados nas predições do modelo ao se utilizar qualquer um dos critérios de teste para se medir a cobertura. As estimativas dos parâmetros α0 e α1 serão distintas para diferentes critérios de teste adotados.


### 13.4.5. Limitações dos modelos de confiabilidade

Apesar do grande esforço de pesquisa na área de modelagem, os modelos fornecem apenas uma estimação grosseira da confiabilidade do software. As principais aplicações dos modelos têm se limitado ao suporte à gerência dos projetos e ao seu uso como critério de parada para a atividade de teste

No procedimento sobre a modelagem de confiabilidade de software o programa é executado várias vezes usando os dados de teste selecionados aleatoriamente, de acordo com o perfil operacional. Quando uma falha ocorre, pára-se o teste e, em seguida, inicia-se o procedimento de detecção e remoção do defeito que causou a falha. Novamente, inicia-se o teste até que uma nova falha ocorra. Em alguns modelos utilizam-se os resultados do teste para se estimar o número de defeitos restante e obter a taxa de falhas em função desse número. Em outros modelos utiliza-se a seqüência do tempo entre falhas para se medir a confiabilidade corrente e, também, estimar o crescimento da confiabilidade com a execução de novos dados de teste. A informação sobre a cobertura de elementos requeridos, considerando-se um teste caixa branca, geralmente não é utilizada, mesmo sabendo que a ocorrência de falhas, na maioria das vezes, está relacionada ao exercício de elementos requeridos do teste.

Uma outra restrição nos modelos de confiabilidade de software são os critérios de teste. Todo critério de teste tem um limite na sua capacidade de detectar a validade dos dados que têm alguma chance de revelar defeitos em um programa. Quando um critério de teste atinge seu limite, não se consegue mais detectar a validade de um novo dado de teste e, assim, o tempo entre falhas pode aumentar consideravelmente. Logo, a estimativa da confiabilidade, produzida pelos modelos baseados no domínio do tempo, cresce sem que haja a remoção de algum novo defeito. Os testadores que não estiverem conscientes do nível de saturação do critério de teste podem obter uma superestimação da confiabilidade.

A estimação do perfil operacional é um dos fatores importantes no uso de modelos de crescimento de confiabilidade. Um perfil operacional é a função Densidade de Probabilidade, que melhor representa como os dados de entrada são selecionados durante o tempo de teste do software. Sem um perfil operacional preciso, as estimativas dos modelos certamente serão incorretas. No entanto, o perfil operacional pode ser difícil de ser estimado, principalmente em softwares utilizados em controle de processos. Em outros casos, um único perfil operacional de um software pode não ser suficiente para os diferentes usuários deste software. Além disso, um perfil operacional pode ser alterado durante o processo de manutenção do software. Todas essas causas podem conduzir a erros na estimação do perfil operacional e esses erros certamente afetam a sensibilidade dos modelos de crescimento de confiabilidade.

Os modelos baseados no domínio do tempo não consideram o critério de teste utilizado. Experimentos realizados evidenciam que diferentes técnicas de teste resultam em diferentes estimativas da confiabilidade, o que, evidentemente, afeta o desempenho desses modelos. Dessa maneira, esses modelos apenas tentam simular a forma de uma função matemática, ou seja, a forma de uma função que representa o crescimento da confiabilidade. As formas funcionais propostas não consideram aspectos que afetam o comportamento da confiabilidade. Além dessas limitações, existem outros problemas referentes às suposições que são feitas em muitos modelos de crescimento da confiabilidade e que não podem ser consideradas em aplicações práticas.

Várias suposições específicas limitam a aplicabilidade e a eficácia dos modelos, tais como:

- O tempo é utilizado como base para o cálculo da taxa de falhas.
  
Nesta suposição, está implícito que o esforço do teste é proporcional ao tempo. Todavia, o tempo de calendário e o tempo de relógio de parede somente captam o instante da falha. Em geral, a distribuição da carga de trabalho do sistema (workload) é altamente desigual. Assim, dados baseados nesses tempos tornam-se impróprios. Isso conduz à preferência por dados baseados em tempo lógico ou tempo de execução, para medir ou modelar a confiabilidade. Uma outra restrição com referência ao tempo, como variável de controle do teste, é que não se pode garantir que o esforço do teste está sendo adequado se as entradas selecionadas do domínio não executam pelo menos as principais funções do software em teste. Imaginando-se que fosse possível a realização de um teste no qual o tempo t tende ao infinito, de nada adiantaria o esforço desse teste se as entradas exercitassem sempre as mesmas funções do software ou, equivalentemente, sempre os mesmos elementos, no caso de um teste estrutural. Nesse ponto, ressalta-se a importância de se observar a cobertura de elementos requeridos, quando se utiliza um teste caixa branca, para garantir que pelo menos uma certa porcentagem dos elementos requeridos seja exercitada. Nesse contexto, o tempo não é importante. Muitos modelos de confiabilidade consideram o tempo como variável de controle do teste. Essa utilização do tempo deve-se à herança da teoria sobre confiabilidade de hardware, na qual a variável tempo para o teste é de grande significância.

- Independência de tempo entre falhas.

Essa suposição implica a utilização de uma seleção aleatória dos dados de teste. No entanto, muitas vezes se utiliza uma seleção dirigida ou agrupada com a finalidade de se conseguir uma boa cobertura dos requisitos funcionais. No caso de seleção não aleatória não se pode garantir a independência de tempo entre falhas.

- A confiabilidade como uma função do número de defeitos restantes no software.

Essa suposição implica uma distribuição homogênea dos defeitos no software e, também, uma distribuição uniforme na taxa de detecção de defeitos. Ocorre que, geralmente, a distribuição dos defeitos é desigual, confirmada por estudos recentes. Essas evidências explicam porque, na maioria das vezes, os modelos de crescimento de confiabilidade não funcionam corretamente, ou então, se são aplicados a um software, não se aplicam a outros. Acredita-se que ainda seja preciso um grande esforço de pesquisa para se chegar à solução de todos esses problemas.

Nesse sentido, a utilização da cobertura do critério obtida no teste é uma informação adicional que pode ser utilizada na estimação da confiabilidade do software. A cobertura do teste estrutural e a confiabilidade de software estão estreitamente relacionadas. O uso da cobertura de elementos requeridos, no estudo da confiabilidade, está apoiado na existência de uma forte correlação com a confiabilidade. Pesquisas, tanto no campo teórico como no experimental, comprovam a existência de alguma relação entre a confiabilidade e a cobertura de elementos requeridos de um teste estrutural. A abordagem que utiliza a cobertura do código como informação relacionada à confiabilidade é uma alternativa consistente à tradicional abordagem caixa preta de teste, já que esta não considera a estrutura do código
para a estimação de confiabilidade.

## 13.5. Cálculo da confiabilidade de software

O tema confiabilidade de software é alvo de grande atenção pela comunidade de desenvolvedores de software. Com o crescimento da utilização do software em todas as áreas da atividade humana, e mantida essa tendência, surge uma questão bastante relevante. Qual é o esforço a ser empregado na fase de teste de um software para que seja liberado para seu usuário? Certamente a resposta para essa questão requer uma análise mais profunda, uma vez que o grau de confiança desejado pelo usuário para um software depende do tipo de software e de sua área de aplicação.

A medida da confiabilidade de software proporciona uma resposta quantitativa para essa questão. Nesse sentido, mais de 70 modelos de confiabilidade baseados em diversas abordagens podem ser encontrados na literatura sobre confiabilidade de software. Esses modelos, na grande maioria, requerem um sofisticado procedimento numérico para o cálculo das estimativas de seus parâmetros.

### 13.5.1. Procedimento Geralmente

Como visto anteriormente, existem vários modelos de confiabilidade de software que podem ser utilizados na tomada de decisões. Além da simples satisfação dos requisitos básicos para a utilização de determinado modelo, não existe um critério que possa ser utilizado para a seleção de um modelo de confiabilidade de software antes da realização dos testes do software.

Contudo, a seleção de um modelo de confiabilidade pode seguir um procedimento geral, compreendendo os passos descritos a seguir:

- 1. Teste do software: esta fase inicial não é trivial nem a mais rápida, pois trata da realização dos testes do software. Requer o planejamento dos testes, a realização dos testes e o registro das falhas.
- 2. Coleta dos dados: nesta fase os resultados dos testes são coletados, anotados e armazenados. Normalmente, são anotados dados como: o tempo entre a ocorrência das falhas, o tempo acumulado de falhas, o número acumulado de falhas em um período de tempo e a cobertura do teste.
- 3. Seleção do modelo de confiabilidade: nesta fase verificam-se os modelos que satisfazem as condições em que os testes foram realizados e estimam-se os parâmetros dos modelos.
- 4. Verificação dos modelos de confiabilidade: entre os modelos selecionados no passo anterior, verifica-se a adequação dos modelos com o uso de testes estatísticos (paramétricos e não paramétricos).
- 5. Validação do modelo de confiabilidade: entre os modelos verificados, seleciona-se o modelo que melhor se ajusta aos dados, com base no valor crítico do teste estatístico utilizado no passo anterior.
- 6. Utilização do modelo de confiabilidade: nesta fase utiliza-se o modelo de confiabilidade selecionado para a tomada de decisões sobre o software. Podem ser calculadas estimativas da confiabilidade corrente do software ou estimativas do tempo para a ocorrência das próximas falhas.

Em geral, a seleção de um modelo de confiabilidade do software requer o uso de uma ferramenta. Existem algumas ferramentas de domínio público que podem ser utilizadas para a seleção dos modelos e a estimação de seus parâmetros.

Uma ferramenta bastante conhecida é o SMERFS (Statistical Modeling and Estimation of Reliability Functions for Systems). É uma ferramenta que teve seu desenvolvimento iniciado em 1981, patrocinado pelo departamento de pesquisa naval do governo dos Estados Unidos (NSWC – Naval Surface Weapons Center). Atualmente, é utilizada por diversas empresas e instituições como a NASA (Agência Espacial Norte-Americana) em seus projetos de exploração espacial que exigem softwares com um padrão elevado de confiabilidade. O SMERFS, por meio de técnicas estatísticas, permite avaliar o ajuste de diversos modelos de confiabilidade, assim como estimar os parâmetros desses modelos. Inicialmente, a versão foi desenvolvida para o ambiente DOS, mas já existe uma versão para o ambiente operacional Windows.

Outra ferramenta também de domínio público muito conhecida é o CASRE (Computer Aided Software Reliability Estimation). É uma ferramenta caracterizada pela sua fácil utilização e grande interação com o usuário. A ferramenta CASRE incorpora praticamente todos os modelos implantados no SMERFS.

A SoRel (Software Reliability) é uma ferramenta desenvolvida pelo LAAS, um laboratório da “National Center for Scientific Research” em Toulouse na França [255]. Essa ferramenta foi primeiramente desenvolvida em 1991 para ser operada em uma plataforma Macintosh II com um coprocessador matemático. A SoRel é composta por duas partes. A primeira parte permite aplicar vários testes de tendência da confiabilidade, tais quais: teste aritmético, o teste de Laplace, o teste de Kendall e o teste de Sperman. Esses testes permitem uma análise para identificar se os dados apontam para uma confiabilidade crescente ou decrescente e, então, aplicar um modelo de confiabilidade apropriado. A escolha de um modelo é validada por meio de três critérios estatísticos. A segunda parte permite a aplicação do modelo de confiabilidade escolhido. Uma limitação é que apenas quatro modelos de confiabilidade estão implantados na ferramenta.

Existem outras ferramentas menos conhecidas, como: a SRMP (Statistical Modeling and Reliability Program), desenvolvida por consultores de estatística e confiabilidade para ser utilizada em uma plataforma UNIX, e a SARA (Software Assurance Reliability Automation), um sistema que incorpora a modelagem do crescimento da confiabilidade e métrica do código para analisar o tempo entre falhas do software.

Uma análise detalhada de ferramentas sobre confiabilidade de software pode ser vista na publicação de M. R. Lyu. Handbook of Software Reliability Engineering. McGraw-Hill, 1996.

### 13.5.2. Aplicações de medidas da confiabilidade

Basicamente, existem duas situações importantes de tomadas de decisão que precisam ser investigadas com a ajuda dos modelos de confiabilidade de software, isto é, situações em que o uso dos modelos de confiabilidade de software é indispensável:

- Liberação do software:

O software está pronto para ser liberado? O nível de confiabilidade do software atingido nos testes já realizados pode ser um critério para a liberação do software. No início do teste, ocorre um número significativo de falhas. A remoção dos defeitos que provocaram essas falhas pode gerar um crescimento significativo da confiabilidade do software. Após essa fase inicial de aumento substancial da confiabilidade, atinge-se um patamar em que o aumento da confiabilidade do software ocorre de forma muito lenta. O processo de remoção de defeitos prossegue até atingir um nível de confiabilidade desejado. 

- Teste:

Duas questões podem ser feitas em relação ao teste. Se o teste do software é baseado no tempo: quanto tempo de teste ainda é necessário para se atingir a confiabilidade desejada no software? Se o teste do software é baseado no número de dados de teste: quantos dados de teste ainda são necessários para se atingir a confiabilidade desejada no software? 
O crescimento da confiabilidade considerada como função do tempo ou como função do número de dados de teste indica que qualquer aumento desejado na confiabilidade do software pode requerer um tempo de teste excessivamente longo ou um grande número de dados de teste.

A Figura 13.9 ilustra o crescimento da confiabilidade do software como uma função do tempo de teste.

O critério de confiabilidade mínima desejada para o software é um critério extremamente simples e fácil de ser aplicado. Entretanto, não considera o custo dos testes adicionais necessários para se atingir a confiabilidade desejada. O custo dos testes adicionais para se atingir um nível desejado de confiabilidade para o software pode não ser viável para o projeto em questão.

Devem-se levar em conta dois fatores para a avaliação de custos. O custo do teste do software e o custo de manutenção ou custo de falha no caso de uma liberação do software sem que se tenha atingido o nível de confiabilidade desejado. Esses dois tipos de custos variam em sentidos opostos. O ideal é fazer uma avaliação global que envolva o custo dos testes e o custo de falha. 

<div align="center">
  <img src="books/eduardo_delamaro/static/fig-13-9.png" width="600">
</div>

A Figura 13.10 ilustra o comportamento da função Custo Global. O ideal é a localização do ponto mínimo, ou pelo menos a região próxima ao ponto mínimo do custo global.

<div align="center">
  <img src="books/eduardo_delamaro/static/fig-13-10.png" width="600">
</div>

O momento de liberação do software deve ser tal que minimize a soma desses dois componentes do custo.

## 13.6. Considerações Finais

Neste capítulo apresentamos inicialmente a noção de confiabilidade de software, a confiabilidade no contexto da qualidade de software e sua importância no desenvolvimento de sistemas críticos.

A teoria de confiabilidade de software lida com métodos probabilísticos aplicados para analisar a ocorrência aleatória de falhas em um sistema de software. Os conceitos apresentados fundamentam e formalizam a teoria da confiabilidade de software: função Confiabilidade, função Taxa de Falhas, função de Falhas Acumuladas, função Intensidade de Falhas e Tempo Médio para Falhas. Discutimos brevemente a medição de confiabilidade de software e apresentamos as principais distribuições de probabilidade utilizadas na teoria de confiabilidade – distribuição exponencial, distribuição de Weibull e a distribuição Gamma. 

Aspectos gerais sobre modelos de confiabilidade de software são discutidos, iniciando com a fundamentação básica da modelagem da confiabilidade de software. São apresentadas as principais classificações dos modelos de confiabilidade de software encontradas na literatura.

Alguns dos principais modelos de confiabilidade de software amplamente citados na literatura são discutidos, segundo as três principais abordagens clássicas – modelos de implante de defeitos, modelos baseados no domínio de dados e modelos baseados no domínio do tempo. São também discutidos os modelos baseados em cobertura de teste, uma nova abordagem de modelos de confiabilidade de software. As limitações dos modelos de confiabilidade também são discutidas.

Finalmente, apresentamos um procedimento geral para o cálculo da confiabilidade de software e algumas ferramentas para seleção de modelos de confiabilidade e estimação de seus parâmetros. Apresentamos resumidamente aplicações de medidas da confiabilidade de software. 

Novas abordagens em confiabilidade de software e áreas importantes de aplicação de confiabilidade de software, temas de pesquisa e desenvolvimento incluem: confiabilidade de software baseada em arquitetura; confiabilidade de sistemas baseados em componentes; confiabilidade de servidores e aplicações Web; confiabilidade de aplicações móveis. 