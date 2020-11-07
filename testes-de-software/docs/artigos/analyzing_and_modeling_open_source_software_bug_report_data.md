# Analyzing and Modeling Open Source Software Bug Report Data

# Resumo

Analisamos as principais diferenças entre o desenvolvimento de software de código aberto e fechado de uma perspectiva de confiabilidade de software. Examinamos os dados do relatório de bug do mundo real de seis projetos de software de código aberto, bem como a relação entre os ciclos de lançamento e as características de estabilidade dos dados do relatório de bug de projetos de software de código aberto. Em seguida, modelamos os dados do relatório de bug usando técnicas não paramétricas. Os resultados experimentais sugerem que modelos aditivos generalizados e abordagens de suavização exponencial são adequados para a estimativa da confiabilidade do software, pelo menos para alguns dos projetos de código aberto.

## 1. Introdução

Basicamente, código-fonte aberto refere-se a software em que o código-fonte está disponível para o público em geral para uso e/ou modificação de seu design original, gratuitamente. Esta é uma definição fornecida pela webopedia. Como aponta a iniciativa de código aberto (OSI), código aberto não significa apenas acesso ao código-fonte e aos documentos. Implica um modelo colaborativo global para a construção de software de qualidade, com rápida correção de bugs e incrementos e mudanças rápidas de recursos de software com base nos requisitos dos usuários finais.

Existem perspectivas contraditórias sobre a qualidade e confiabilidade do software de código aberto. Um é positivo e o outro é negativo. O documento de Halloween da Microsoft afirma que o software de código aberto é tão robusto ou de maior qualidade do que o software de código fechado. A Open Source Initiative indica que o software de código aberto é revisado por pares; é provável que seja mais confiável do que software proprietário, ou seja, software de código-fonte fechado. No entanto, Nelson apontou que muitas pessoas acreditam que o software de código aberto não é necessariamente "profissional", que é feito de maneira inadequada e mais sujeito a falhas do que o software de código fechado. Raymond afirma que a comunidade de código aberto se assemelha a um bazar barulhento de agendas e abordagens diferentes. Essas afirmações contraditórias continuam e continuam. Rosenberg apontou que "Para o código aberto [...] há uma névoa estranha pairando sobre ele." Na verdade, mais pesquisas são necessárias para entender o processo de falha e a confiabilidade do software de código aberto.

Como o código aberto é uma abordagem de desenvolvimento de software relativamente nova que difere significativamente do modelo em cascata de software proprietário, ainda não temos nenhuma técnica madura ou estável para avaliar a confiabilidade do software de código aberto. Esta pesquisa visa encontrar maneiras possíveis de estimar a confiabilidade do software de código aberto. A dificuldade com a estimativa da confiabilidade do software de código aberto é causada pelo fato de que temos menos conhecimento sobre a dinâmica de falha de software de código aberto, em comparação com o caso do software proprietário. Portanto, é difícil construir um modelo analítico de confiabilidade de software de código-fonte aberto, como no caso de modelos analíticos de crescimento de confiabilidade de software proprietário. Em vez da abordagem analítica, esta pesquisa emprega técnicas não paramétricas que não requerem nenhum conhecimento ou suposições a priori sobre o processo de falha de software aberto. Nossos resultados preliminares mostraram que modelos aditivos generalizados são adequados para a avaliação da confiabilidade do software, pelo menos para alguns projetos de software livre.

## 2. Definição de confiabilidade de software de código aberto

Nesta seção, primeiro discutimos o conceito de confiabilidade de software proprietário. Em seguida, apresentamos o conceito de confiabilidade do software de código aberto.

### 2.1. Confiabilidade de software proprietário

Técnicas de avaliação de confiabilidade de software têm sido usadas por décadas antes do recente desenvolvimento do paradigma de desenvolvimento de software de código aberto. Por esse motivo, os pesquisadores de confiabilidade de software costumam se referir implicitamente a software proprietário, em vez de software de código-fonte aberto. Para entender a confiabilidade do software de código aberto, precisamos saber o que é a confiabilidade do software proprietário. Conceitualmente, a confiabilidade do software proprietário é a probabilidade de operação do software livre de falhas por um período de tempo especificado em um ambiente especificado. Para avaliar a confiabilidade do software proprietário, os desenvolvedores de software testam o produto de software e corrigem os bugs detectados. Os dados de falha de software, como o tempo entre as falhas, são obtidos. Um modelo de crescimento de confiabilidade de software apropriado é aplicado aos dados de falha de software para avaliar a confiabilidade. Desta forma, a confiabilidade do software aumenta com o tempo devido à descoberta e remoção graduais de defeitos de software. Esse procedimento é repetido até que a confiabilidade prevista pelo modelo atinja um determinado nível de limiar quando o software for considerado pronto para ser lançado. Entende-se que a alta complexidade do software é a principal causa de defeitos de software. A confiabilidade do software está intimamente relacionada aos elementos dos processos de design e desenvolvimento de software. Os processos de design e desenvolvimento de software de código-fonte aberto diferem significativamente dos de software proprietário. Portanto, podemos não ser capazes de aplicar os modelos existentes de crescimento da confiabilidade do software proprietário ao software de código aberto. Parece que ainda não existem técnicas maduras para a estimativa da confiabilidade do software livre. A dificuldade decorre da compreensão insuficiente das características do processo de desenvolvimento de software de código aberto e da falha.

### 2.2. Confiabilidade de software de código aberto

Para entender o que é a confiabilidade do software de código aberto, precisamos entender o desenvolvimento de software de código aberto. Webopedia fornece a seguinte descrição para o desenvolvimento de software de código aberto: o código de código aberto é normalmente criado como um esforço colaborativo no qual os programadores melhoram o código e compartilham as mudanças dentro de uma comunidade baseada na Internet. Este é o contexto típico em que discutimos a confiabilidade do software de código aberto. Na verdade, os dados que usamos nesta pesquisa são recuperados do SourceForge, um site que hospeda dezenas de milhares de projetos e comunidades de software livre.

No contexto do software de código fechado, temos como alvo um usuário individual ou um grupo específico de usuários. A medição da confiabilidade que obtemos é baseada em um perfil de uso único, ou seja, da perspectiva desse único ou determinado grupo de usuário(s). (O perfil de uso é definido como a distribuição de probabilidade de recursos de software sendo usados ​​por um único ou determinado grupo de usuários. Dito de outra forma, com que probabilidade todos os recursos do software seriam usados ​​pelos usuários?) No contexto de software de código aberto , os usuários e os padrões de uso são diversos. Os perfis de uso do produto de código aberto determinam sua confiabilidade. Diferentes grupos de usuários usam o software de código aberto de maneiras diferentes. Mesmo que o software raramente falhe e, portanto, demonstre alta confiabilidade para a maioria dos usuários, ele ainda pode funcionar mal para alguns outros. O software é de baixa qualidade do ponto de vista desses poucos usuários infelizes. Mas em média o software é de alta confiabilidade, conforme Bosio et al. explicou. Portanto, por confiabilidade de software de código aberto, nos referimos à confiabilidade média entre todos os usuários e todos os perfis de uso dos produtos.

## 3. Pesquisa relacionada

Li e Herbsleb et al. tentou prever defeitos de campo de software de código aberto estendendo um modelo de Weibull. Eles estabeleceram a partir de experimentos que não é possível fazer previsões de defeitos de campo significativas estendendo modelos de crescimento de confiabilidade de software proprietário tradicional ajustados para defeitos de software de código aberto (ou seja, os modelos Gamma, os modelos logarítmicos, os modelos exponenciais, os modelos Power). Zhou e Davis mostraram que ao longo do ciclo de desenvolvimento, os projetos de código aberto exibem um padrão de crescimento de confiabilidade semelhante ao de projetos de código fechado. Eles consideraram que é possível usar a distribuição geral de Weibull para modelar os padrões de ocorrência de bug de código aberto. Li e Shaw et al. examinaram padrões de ocorrência de bug relatados por usuários em vinte e duas versões de quatro sistemas de software de código aberto amplamente implantados. Eles descobriram que o modelo Weibull é flexível o suficiente para capturar o comportamento de ocorrência de defeitos em uma ampla gama de sistemas.

O processo de código aberto é uma abordagem de desenvolvimento de software relativamente nova. Há uma falta de compreensão das características da dinâmica dos processos de código aberto. Vários pesquisadores tentaram contribuir com uma compreensão da dinâmica de falha de software de código aberto. Bosio et al. criou um modelo analítico de probabilidade para o processo de bug de código aberto. Uma de suas principais descobertas é que o software de código aberto tem uma diversidade mais rica de desenvolvedores e usuários que contribuem para uma maior confiabilidade do código aberto em comparação com o software de código fechado. Challet e Du estabeleceram um modelo analítico simplificado de dinâmica de falha de código aberto. Este modelo visa revelar os elementos básicos e as interações fundamentais entre eles que dão origem a uma fenomenologia de bug relevante.

O ponto principal da pesquisa anterior é que, devido à falta de compreensão da dinâmica de falha do processo de código aberto, é difícil estabelecer um modelo analítico de confiabilidade de software para software de código aberto. Uma alternativa, conforme sugerido pela pesquisa anterior, é aplicar modelos não paramétricos flexíveis nos dados de bug de projetos de código aberto na expectativa de que a flexibilidade possa permitir que os modelos capturem a natureza desconhecida da dinâmica de falha do código aberto. Com base nessas pesquisas anteriores, este estudo tenta analisar as características dos dados de ocorrência de bug e, em seguida, aplicar técnicas não paramétricas apropriadas, como modelos aditivos generalizados (GAM), modelo linear generalizado (GLM), a máquina de vetores de suporte modelos de regressão (SVM), e a média móvel (MA) e técnicas de suavização exponencial (ES) para capturar as características desconhecidas da dinâmica de falha de projetos de software de código aberto sem fazer quaisquer suposições a priori sobre a dinâmica do fracasso dos projetos.

## 4. O efeito do lançamento frequente nos dados do bug

Nesta seção, discutimos a influência dos ciclos de lançamento nos padrões de ocorrência de bug em projetos de software de código aberto.

## 4.1. A plataforma sourceForge e os dados do bug

SourceForge.net é um site de desenvolvimento de software de código aberto, hospedando mais de 100.000 projetos de código aberto e mais de 1.000.000 de usuários registrados com um recurso centralizado para gerenciamento de projetos, comunicações e códigos. SourceForge.net possui um grande repositório de código-fonte aberto e aplicativos disponíveis na Internet. Recuperamos nossos dados de relatório de bug deste site. Escolhemos os dados de tempo de ocorrência de bug de seis projetos de software de código aberto, XUI, Filezilla, TrixBox, Gimp, KeePass e Open Taps. XUI é um aplicativo de banco de dados implementado com JAVA. Filezilla é um aplicativo de rede implementado com C++. E o Trixbox é um aplicativo VOIP, que é um sistema em tempo real. Gimp é um driver de impressora. KeePass é um programa seguro com senha. OpenTaps é uma suíte de ERP e CRM. No momento em que recuperamos os dados, eles estão no estágio de produção/estável. Portanto, temos dados relativamente completos para o ciclo de desenvolvimento dos seis projetos.

Na Figura 1, o eixo horizontal são as versões de lançamento organizadas em ordem cronológica. O eixo vertical é o número de bugs relatados durante cada versão. Os bugs não são distribuídos uniformemente entre as versões. Como existem menos de apenas 3 relatórios de bug em algumas versões, é impossível ajustar um modelo para os dados em cada versão. Esse pode ser o motivo pelo qual Li e Herbsleb et al. afirmam que não há dados suficientes para ajustar um modelo para cada versão.

<div align='center'>
    <img src='artigos/static/zho-davis/figura-01.png'>
</div>

Mostrado na Figura 2 está o tempo entre os relatórios de bug. Quanto maior o tempo entre os relatórios de bug, maior será a confiabilidade. O pico mais alto mostrado na figura é na verdade um outlier; porque corresponde ao período de Natal e Ano Novo quando ninguém trabalha e, claro, nenhum relatório de bug.

Os tempos de liberação de cada versão correspondem aos pontos horizontais (na Figura 2): 118, 125, 130, 150, 169, 212 e 228, marcados na figura por uma linha vertical.

<div align='center'>
    <img src='artigos/static/zho-davis/figura-02.png'>
</div>

Nos pontos 118, 125 e 130, parece que as atividades de lançamento não têm muita influência na dinâmica do bug nesses pontos de tempo de lançamento. Mas nos pontos de tempo de lançamento 150, 169 e 212, as atividades de lançamento parecem ter mudado a dinâmica do bug significativamente, fazendo com que a tendência de tempo entre os relatórios de bug diminua para um nível muito baixo e, consequentemente, dê origem a variações e flutuações drásticas em os dados, ou seja, heterogeneidade.

Mostrado na Figura 3 estão os lançamentos e distribuição de bug para outro projeto de código aberto, Filezilla. O lançamento é mais frequente neste projeto do que no projeto XUI. No projeto XUI, existem 10 lançamentos em um período de cerca de quatro anos, enquanto no projeto Filezilla, existem 16 lançamentos em um período de cerca de 2 anos. E os bugs são distribuídos de maneira mais uniforme entre os lançamentos.

<div align='center'>
    <img src='artigos/static/zho-davis/figura-03.png'>
</div>

Ilustrado na Figura 4 está a dinâmica do bug para o projeto FileZilla. Parece que a dinâmica é relativamente estável em comparação com a do projeto XUI. Isso sugere que lançamentos mais frequentes podem resultar em um processo de falha de software relativamente mais estável.

<div align='center'>
    <img src='artigos/static/zho-davis/figura-04.png'>
</div>

A dinâmica de bug para o projeto Trixbox é relativamente estável (consulte a Figura 5) também, porque os lançamentos também são frequentes neste projeto.

<div align='center'>
    <img src='artigos/static/zho-davis/figura-05.png'>
</div>

## 5. Modelando os dados do bug

Realizamos experimentos na modelagem dos dados do relatório de bug dos três projetos de software de código aberto com modelo linear generalizado, modelo aditivo generalizado, máquina de regressão de vetor de suporte, técnica de média móvel e suavização exponencial. Nosso objetivo é prever o tempo sucessivo de ocorrência de bug nos três projetos de software de código aberto.

Aroui mostrou que alguns modelos lineares generalizados (GLMs) são equivalentes a alguns dos modelos de crescimento de confiabilidade de software padrão. Na verdade, certos modelos de crescimento de confiabilidade de software padrão, como o modelo de Jelinski-Moranda e o modelo de deseutrofização geométrica de Moranda, são GLMs. Incluímos GLMs em nossos experimentos com o objetivo de comparar nossos resultados de modelagem com modelos de crescimento de confiabilidade de software padrão.

## 5.1. Modelos GLM

Modelos lineares generalizados (GLMs) têm sido usados para realizar a regressão para dados não distribuídos normalmente. Os GLMs podem lidar com uma ampla gama de situações comuns, incluindo diversas distribuições e não linearidade nos dados.

Dada a variável de resposta, Y e a variável preditora independente, X, um GLM pode ser escrito da seguinte forma:

<div align='center'>
    <img src='artigos/static/zho-davis/formula-01.png'>
</div>

onde μ é a média de Y, β são os coeficientes e g é chamada de função de ligação. Portanto, os GLMs requerem uma relação linear de ligação entre Y e μ. O relacionamento linear do link pode ser visto como uma função de mapa entre o espaço do problema não linear e um espaço abstrato linear onde podemos realizar uma análise linear, derivar uma solução e mapear de volta para o espaço do problema não linear. Além disso, os GLMs exigem geralmente que a distribuição de Y pertença à família Exponencial. Os parâmetros são estimados com máxima verossimilhança ou quase máxima verossimilhança. Detalhes sobre GLMs podem ser encontrados no livro de McCullagh e Nelder.

## 5.2. Modelos GAM

Para a variável de resposta Y e as variáveis preditoras independentes X 1, ..., X p, a regressão linear padrão assume que o valor esperado de Y está linearmente relacionado às variáveis preditoras independentes. Isso é:

<div align='center'>
    <img src='artigos/static/zho-davis/formula-02.png'>
</div>

β0, β1, ..., βp são coeficientes obtidos pelo método dos mínimos quadrados com base nas observações. O modelo aditivo generaliza o modelo linear modelando o valor esperado de Y como

<div align='center'>
    <img src='artigos/static/zho-davis/formula-03.png'>
</div>

## 5.3. Modelos SVM

A técnica de aprendizado de máquina de vetor de suporte foi introduzida por Vapnik, que inclui classificação de vetor de suporte e regressão de vetor de suporte (SVR).

A regressão linear padrão tem o seguinte formato:

<div align='center'>
    <img src='artigos/static/zho-davis/formula-04.png'>
</div>

onde Y é a variável dependente, W é o vetor de coeficientes, X é o vetor de variáveis independentes. “<.>” Representa o produto escalar de duas variáveis vetoriais. Com base na regressão geral, definimos um tubo de raio ε≥0 em torno da regressão linear geral. Se y estiver dentro do tubo, presumimos que não há erro de regressão. Consequentemente, ignoramos os erros de regressão menores que ε.

Quando y está além do tubo, definimos uma variável de folga para lidar com a situação quando o erro de regressão é maior do que o raio ε. Com uma função de perda insensível ε L

<div align='center'>
    <img src='artigos/static/zho-davis/formula-05.png'>
</div>

As variáveis de folga ξ i são definidas para cada observação

<div align='center'>
    <img src='artigos/static/zho-davis/formula-06.png'>
</div>

Nós minimizamos o seguinte

<div align='center'>
    <img src='artigos/static/zho-davis/formula-07.png'>
</div>

Minimizar o primeiro termo implica em obter uma regressão o mais suave possível. Minimizar o segundo termo implica em obter os erros de regressão os menores possíveis, como no caso das técnicas de mínimos quadrados ou máxima verossimilhança. Resolvendo esta equação de otimização, obtemos os parâmetros de regressão.

## 5.4. Modelos de média móvel e exponencial mais suave

A média móvel (MA) é uma técnica de suavização simples que tem alguma capacidade de previsão dependendo do contexto. A ideia principal é obter a média de vários pontos de dados mais próximos para construir um novo ponto de dados (extrapolação ou interpolações). Chamamos de MA5 porque usamos os 5 pontos de dados mais próximos em nosso experimento. É uma técnica que troca entre abordagens de passeio aleatório e de predição de valor médio. Brockwell et al. deu detalhes do MA.

Dada uma série de tempo com observações X 1, X 2, ..., X n, suavização exponencial (ES) é a média ponderada da observação atual X t e o valor suavizado da observação anterior.

<div align='center'>
    <img src='artigos/static/zho-davis/formula-08.png'>
</div>

onde α é o fator de ponderação. Xie estabeleceu que a técnica de suavização exponencial fornece uma previsão mais precisa em comparação com os modelos tradicionais de crescimento de confiabilidade de software padrão. Incluímos esta abordagem em nosso experimento como uma linha de base para fins de comparação e validação de nossas abordagens de modelagem. Box et al. apresentou uma descrição detalhada do ES.

## 6. Resultados

Realizamos experimentos para prever o tempo de ocorrência de bug sucessivos. Escolhemos os dados de tempo de ocorrência do bug de seis projetos de software de código aberto, XUI, FileZilla, TrixBox, Gimp, KeePass e Opentaps. Os detalhes dos seis projetos de software de código aberto foram fornecidos na Seção 4.1.

<div align='center'><img src='artigos/static/zho-davis/figura-06-a.png'></div>
<div align='center'><img src='artigos/static/zho-davis/figura-06-b.png'></div>
<div align='center'><img src='artigos/static/zho-davis/figura-06-c.png'></div>
<div align='center'><img src='artigos/static/zho-davis/figura-06-d.png'></div>
<div align='center'><img src='artigos/static/zho-davis/figura-06-e.png'></div>

<div align='center'><img src='artigos/static/zho-davis/figura-07-a.png'></div>
<div align='center'><img src='artigos/static/zho-davis/figura-07-b.png'></div>
<div align='center'><img src='artigos/static/zho-davis/figura-07-c.png'></div>
<div align='center'><img src='artigos/static/zho-davis/figura-07-d.png'></div>
<div align='center'><img src='artigos/static/zho-davis/figura-07-e.png'></div>

Mostrado nas Figuras 6 e 7 estão as previsões do GLM, SVM, GAM, MA5 e ES dos tempos de ocorrência de bug sucessivos para o projeto de software de código aberto XUI e TrixBox. Devido à limitação do espaço aqui, outros quatro projetos não são mostrados, mas estão resumidos nas tabelas. As previsões do GLM são muito suaves, o que reflete as tendências gerais de longo prazo dos dados de tempo de ocorrência do bug. Mas não dá muitos detalhes das variações. Na verdade, o GLM enfatiza a previsão da tendência geral. No entanto, os projetos de código aberto geralmente não são bem planejados e organizados. Freqüentemente, ocorrem mudanças na frequência de lançamento, design, abordagens e etc. Os dados do passado distante não contribuem para a previsão do futuro. Pelo contrário, eles podem perturbar a previsão. Conseqüentemente, a previsão do GLM freqüentemente diverge dos dados da vida real. A previsão para o projeto XUI é ilustrada na Figura 6 (a). A previsão no estágio inicial é relativamente precisa. No estágio posterior, a previsão se desvia dos dados reais. Isso é causado pelos lançamentos infrequentes e desiguais do projeto. Podemos ver a parte correspondente dos dados do relatório de tempo entre o bug na Figura 2. (c) Previsão GAM para o projeto Trixbox

A força do SVM é sua boa capacidade de generalização sob condições de forte ruído de dados. Como o GLM, ele se concentra em prever a tendência geral de todos os dados da série temporal. Portanto, como o GLM, sua previsão se desviou dos dados reais devido ao comportamento de curto prazo dos projetos de código aberto (consulte a Figura 6 (b) e a Figura 7 (b)).

ES e MA partem da ideia de que os dados mais recentes têm mais influência no comportamento futuro, portanto, têm maior poder de previsão. ES usa um fator de ponderação para acomodar essa ideia. Essa ideia corresponde às características de curto prazo do processo de código aberto. Consequentemente, suas previsões estão muito próximas dos dados da vida real. ES é mais preciso nesse aspecto do que MA.

Embora se ajuste à tendência geral de longo prazo dos dados, o GAM também se ajusta ao comportamento local de curto prazo de um sistema. Na verdade, o spline do GAM é um local mais suave. Portanto, o GAM é adequado para a previsão do comportamento local principalmente de curto prazo nos processos de código aberto. Na verdade, seu desempenho é superior a outros modelos.

<div align='center'><img src='artigos/static/zho-davis/table-01.png'></div>
<div align='center'><img src='artigos/static/zho-davis/table-02.png'></div>

A Tabela 1 mostra a comparação da soma do erro de predição do quadrado (soma do quadrado residual: RSS). Os números da Tabela 1 são muito grandes. Para facilitar a compreensão dos leitores, apresentamos os resultados na Tabela 2 de uma forma diferente. A Tabela 2 mostra a comparação da soma dos quadrados residuais com ES como linha de base. Para cada projeto, calculamos os números na Tabela 2 usando os RSSs nas colunas para MA5, ES, GLM, GAM e SVM sendo divididos por RSS na coluna para ES (como linha de base). Isso é

<div align='center'><img src='artigos/static/zho-davis/formula-09.png'></div>

Xie et al. demonstrou que o ES é mais preciso do que os modelos tradicionais de crescimento da confiabilidade do software na previsão da confiabilidade do software. Portanto, o usamos como uma linha de base para comparação para validar nossas abordagens de modelagem. A comparação mostra que, com poucas exceções, o ES geralmente tem um desempenho melhor do que o MA, que por sua vez tem um desempenho melhor do que o SVM.

O desempenho do GLM é o pior, o que equivale a alguns modelos tradicionais de crescimento da confiabilidade de software na capacidade de previsão, conforme demonstrado por Aroui. Isso indica que os modelos tradicionais de crescimento da confiabilidade do software de código-fonte fechado, que são equivalentes ao GLM, não são adequados para a avaliação da confiabilidade do software de código-fonte aberto porque usam todos os dados históricos para prever a confiabilidade, enquanto os projetos de OSS geralmente não são bem organizados e não bem planejados, portanto, são principalmente de comportamento de curto prazo. Esse resultado é consistente com os resultados de Li et al. que demonstrou este ponto de uma perspectiva diferente. O GAM supera todas as outras técnicas na previsão da confiabilidade do software de código aberto. Também conforme mostrado na Tabela 2, Figura 2, 6 (a) e 7 (a), para o projeto XUI, que tem ciclos de liberação mais longos, a previsão é menos precisa. Para projetos TrixBox e FileZilla, que possuem ciclos de lançamento curtos, a previsão é mais precisa e mais estável.

## 7. Conclusões

Concluímos com as seguintes quatro inferências preliminares baseadas nesta pesquisa.

a) GAM é adequado para prever a confiabilidade pelo menos para alguns projetos de software de código aberto;
b) Os modelos analíticos tradicionais de crescimento da confiabilidade de software de fonte fechada geralmente não são adequados para avaliar a confiabilidade de projetos de software de fonte aberta;
c) ES em determinado contexto pode ser usado para estimar a confiabilidade do software de código aberto;
d) A previsão de confiabilidade é geralmente mais precisa para projetos de código aberto com lançamentos frequentes.