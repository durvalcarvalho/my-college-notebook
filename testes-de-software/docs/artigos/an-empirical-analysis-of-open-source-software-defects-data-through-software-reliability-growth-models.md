# Uma análise empírica de dados de defeitos de software de código aberto por meio de modelos de crescimento de confiabilidade de software

# Resumo

O objetivo deste estudo é analisar o crescimento da confiabilidade de Software Open Source (OSS) usando modelos de Crescimento de Confiabilidade de Software (SRGM). Este estudo usa dados de defeitos de vinte e cinco versões diferentes de cinco projetos de OSS. Para cada versão dos projetos selecionados, dois tipos de conjuntos de dados foram criados: conjunto de dados desenvolvidos em relação à data de criação do defeito (dataset da data de criação) e o conunto de dados desenvolvidos em relação à data de conserto do defeito (datase de atualização). Esses conjuntos de dados de defeito são modelados por oito SRGMs: Musa-Okumoto, Delayed S-Shape, Logistic, Gompertz, Yamada Exponential, and Generalized Goel. Esses modelos são escolhidos devido ao seu amplo uso na literatura. Os SRGMs são ajustados a ambos os tipos de conjunto de dados de defeitos de cada projeto e seus recursos de ajuste e predição são analisados a fim de estudar o crescimento da confiabilidade do OSS com relação à criação de defeitos e tempo de atualização de defeitos porque a análise de defeitos pode ser usada como um preditor de confiabilidade crescente. 

Os resultados mostram que a capacidade de ajuste e predição dos SRGMs aumentam diretamente quando é utilizado as datas de criação das issues nos modelos de crescimento de confiabilidade. OSS. Portanto, o crescimento da confiabilidade do OSS pode ser caracterizado com SRGM de uma maneira melhor se a data de criação do defeito for tomada em vez da data de atualização (correção) dos defeitos durante o desenvolvimento de conjuntos de dados de defeitos do OSS em sua modelagem de confiabilidade.

## 1. Introdução

Software de código-fonte aberto é o software cujo código-fonte é livremente acessível e modificável pelos usuários, sujeito a restrições expressas em vários modos de licenciamento. Implica uma aliança global para o desenvolvimento de software de qualidade com rápida correção de bugs, juntamente com adição e alteração rápidas nos recursos do software com base nos requisitos do usuário final. É por isso que o OSS está atendendo aos requisitos dos usuários de forma muito precisa de suas escolhas e interesses.

Nos últimos anos, a tendência de adoção de software de código aberto e componentes de software de código aberto aumentou rapidamente. De acordo com o relatório do Gartner, cerca de 80% do software usará tecnologias de código aberto em 2012. De acordo com a pesquisa netcarf, mais de 58% dos servidores web estão usando um servidor web de código aberto, Apache. O rápido aumento na aceitação da tecnologia de código aberto é devido à sua disponibilidade gratuita, liberdade de escolha e acessibilidade. Ainda existem medos e questões não resolvidas, especialmente para empresários e gerentes de projeto.

Dois temores comuns, que também foram delineados por Ray Lane, ex-executivo da Oracle, em uma palestra na conferência de código aberto de 2004, são a falta de suporte formal e a velocidade das mudanças. Todos esses medos e preocupações podem ser rastreados até a qualidade e confiabilidade dos produtos de código aberto.

Confiabilidade é definida como a probabilidade de operação livre de falha do software por um período de tempo especificado em um ambiente especificado. A confiabilidade é uma das características mais importantes da qualidade do software quando considerada para uso comercial. A adoção de produtos confiáveis de código aberto para uso comercial pode ser um verdadeiro desafio. Embora os produtos de software de código aberto forneçam rotineiramente informações sobre a classificação da atividade do produto, o número de desenvolvedores e o número de usuários ou downloads, essas informações não transmitem informações sobre a qualidade do produto de código aberto.

Modelos de crescimento de confiabilidade de software (SRGMs) são frequentemente usados na literatura para caracterização de confiabilidade de software comercial. <mark>O SRGM assume que a confiabilidade aumenta depois que um defeito é detectado e corrigido.</mark> No entanto, os resultados relativos à aplicabilidade dos SRGMs para caracterização da confiabilidade do OSS relatados na literatura não são claros.

Aqui, caracterizamos o crescimento da confiabilidade dos projetos de OSS usando SRGMs para investigar se os aumentos de confiabilidade do OSS podem ou não ser caracterizados por meio do SRGM. Se isso acontecer, os mesmos testes de confiabilidade do produto podem ser aplicados. Caso contrário, novos testes e modelos para analisar a confiabilidade do OSS devem ser desenvolvidos. Em projetos OSS, a detecção de defeitos e o tempo de correção de um defeito são bastante diferentes entre si. Também analisamos o crescimento da confiabilidade do OSS em relação ao tempo de detecção de defeitos e ao tempo de fixação de defeitos, pois a análise de defeitos pode ser usada como um preditor de confiabilidade construtiva e medir o crescimento de defeitos é uma boa maneira empírica de avaliar a qualidade do software.

Primeiramente, fornecemos uma rápida atualização sobre modelagem de confiabilidade e descrevemos modelos comuns usados para medir a confiabilidade de software na seção 2. Na seção 3, descrevemos a revisão da literatura. Em seguida, descrevemos as questões de pesquisa e a metodologia usada para este estudo na seção 4. A seção 5 descreve a coleta de dados. Na seção 6, descrevemos os resultados e discutimos o crescimento da confiabilidade dos projetos selecionados. A seção 7 descreve as ameaças à validade do estudo. A seção 8 apresenta uma discussão sobre nossas descobertas e conclui o artigo.

## 2. Modelo de crescimento da Confiabilidade de Software

A modelagem de confiabilidade de software (SRM) tem sido usada há muito tempo como o mais importante e bem-sucedido indicador de qualidade de software quando ele chega ao mercado. O modelo de confiabilidade é uma expressão matemática que especifica a forma geral de ocorrência da falha em função da introdução, remoção da falha e ambiente operacional. Os Modelos de Confiabilidade de Software (SRM) podem avaliar e prever a confiabilidade. Na avaliação de confiabilidade, os SRM são ajustados aos dados de falha coletados usando técnicas estatísticas (por exemplo, regressão linear, regressão não linear) com base na natureza dos dados coletados. Na previsão de confiabilidade, o número total de falhas futuras esperadas é previsto com base no SRM ajustado. Tanto a avaliação quanto a previsão precisam de bons dados, o que implica precisão, ou seja, os dados são registrados com precisão no momento em que as falhas ocorreram e a pertinência, ou seja, os dados se referem a um ambiente que se assemelha ao ambiente para o qual a previsão é realizada. Para modelagem de confiabilidade, os sistemas de software são testados em um ambiente que se assemelha ao ambiente operacional. Quando uma falha (ou seja, um comportamento inesperado e incorreto do sistema) ocorre durante o teste, ela é contada com uma etiqueta de tempo. As falhas cumulativas são contadas com o tempo cumulativo correspondente. SRM é ajustado aos dados coletados e os modelos ajustados são então usados ​​para prever o número total de defeitos esperados (isto é, falha na execução de qual falha ocorre) no software.

Portanto, a modelagem de confiabilidade normalmente é composta de 5 etapas: manter um registro das falhas anteriores, traçar as falhas, determinar uma curva (ou seja, modelo) que melhor se ajusta às observações, medir a precisão do modelo de curva e, em seguida, usar a previsão do modelo mais bem ajustado a confiabilidade futura em termos de previsão do número total de defeitos esperados no sistema de software.

Os SRM amplamente usados são Modelos de Crescimento de Confiabilidade de Software (SRGM). Eles pressupõem que a confiabilidade aumenta depois que um defeito é detectado e corrigido. O SRGM pode ser aplicado para orientar a comissão de teste em sua decisão de interromper ou continuar o teste. Esses modelos são agrupados em modelos côncavos e em forma de S com base na suposição sobre o padrão de ocorrência de falha. Os modelos em forma de S assumem que o padrão de ocorrência do número cumulativo de falhas é em forma de S: inicialmente os testadores não estão familiarizados com o produto, então eles se tornam mais familiares e, portanto, há um aumento lento na remoção de falhas. Conforme as habilidades dos testadores melhoram, a taxa de detecção de defeitos aumenta rapidamente e, em seguida, se estabiliza conforme os erros residuais se tornam mais difíceis de remover. Nos modelos de formato côncavo, o aumento na intensidade da falha atinge um pico antes que uma diminuição no padrão de falha seja observada. Portanto, os modelos côncavos indicam que se espera que a intensidade da falha diminua exponencialmente após um pico ser atingido.

SRGMs medem e modelam o próprio processo de falha. Por causa disso, eles incluem um componente de tempo, que é caracteristicamente baseado em tempos de registro ti de falhas sucessivas i (i ≥ 1). O tempo pode ser registrado como tempo de execução ou tempo de calendário. Esses modelos são ajustados aos defeitos cumulativos coletados em relação ao tempo coletado cumulativo. Esses modelos ajustados são usados para prever o comportamento futuro do software. Esses modelos se concentram no histórico de falhas do software. O histórico de falhas é afetado por vários fatores, incluindo o ambiente no qual o software é executado e como ele é executado. Uma suposição geral desses modelos é que o software deve ser executado de acordo com seu perfil operacional; ou seja, as entradas de teste são selecionadas de acordo com a probabilidade de sua ocorrência durante a operação real do software em um determinado ambiente. Existem muitas descrições detalhadas de SRGM com muitos estudos e aplicações dos modelos em vários contextos. Os modelos diferem com base em suas suposições sobre o software e seu ambiente de execução.

Nesta pesquisa, traçaremos dados de defeitos de projetos de OSS usando oito modelos SRGM e examinaremos o crescimento da confiabilidade para analisar o padrão de confiabilidade dos OSSs. Este estudo utilizou oito SRGM, selecionados por serem os mais representativos em sua categoria. A Tabela 1 relata seu nome e referência e, para cada um deles:

<div align='center'>
    <img src='artigos/static/ullah-morisio/tabela-01.png'>
</div>

Cada modelo tem uma combinação diferente de parâmetros no MVF:

- a = número total esperado de defeitos no código
- b = fator de forma, ou seja, as taxas nas quais a taxa de falha
diminui
- c = número esperado de falhas residuais no software em
fim do teste do sistema

## 3. Revisão na literatura

Diferentes estudos estão disponíveis na literatura sobre a aplicabilidade de modelos de confiabilidade de software para OSS, com resultados pouco claros. Syed Mohammad et al. examinaram a taxa de descoberta de defeitos de dois produtos OSS com software desenvolvido internamente usando 2 SRGM. Eles observaram que os dois produtos OSS têm um perfil diferente de descoberta de defeitos. Ying Zhou et al analisaram dados de rastreamento de bugs de 6 projetos OSS. Eles observaram que, ao longo de seu ciclo de desenvolvimento, os projetos OSS exibem um padrão de crescimento de confiabilidade semelhante ao de projetos de código fechado. Eles propuseram a distribuição geral de Weibull para modelar o padrão de ocorrência de falha de projetos OSS. Bruno Rossi et al analisaram o padrão de ocorrência de falha de 3 produtos OSS aplicando SRGM. Eles propuseram que o melhor modelo para OSS é a distribuição Weibull. Cobra Rahmani et al. comparou as capacidades de ajuste e previsão de 3 modelos usando dados de falha de 5 projetos OSS. Eles observaram que o modelo Shneidewind é o melhor enquanto Weibull é o pior. Fengzhong et al examinaram os relatórios de erros de 6 projetos OSS. Eles modelaram os relatórios de bug usando técnicas não paramétricas. Eles sugeriram que os modelos de aditivo generalizado (GA) e as abordagens de suavização exponencial são adequados para a caracterização da confiabilidade de projetos de OSS.

Portanto, de uma forma generalizada, a validação empírica de modelos de confiabilidade de software para projetos de OSS é necessária, a fim de tornar clara a aplicabilidade dos modelos de confiabilidade de software para projetos de OSS.

## 4. Objetivos, questões de pesquisa e métricas

O corpo existente da literatura sobre caracterização de confiabilidade de OSS por meio de SRGMs é limitado. Além disso, os resultados relativos à aplicabilidade de SRGMs para caracterização de confiabilidade de OSS relatados na literatura não são claros. É por isso que o primeiro objetivo deste estudo é investigar empiricamente se os aumentos de confiabilidade do OSS podem ou não ser caracterizados por meio do SRGM. Em segundo lugar, em projetos de software de fonte aberta, a detecção de defeitos e o tempo de correção de um defeito são bastante diferentes entre si, o que pode afetar o aumento da confiabilidade. Essa diferença no tempo de detecção e fixação de defeitos pode ser uma razão de resultados pouco claros relatados na literatura sobre a aplicabilidade do SRGM para caracterização de confiabilidade do OSS. Portanto, analisamos empiricamente o crescimento da confiabilidade do OSS em relação ao tempo de detecção de defeitos versus o tempo de correção de defeitos por meio do SRGM.

Para atingir os objetivos, nosso estudo concentra-se nestas questões de pesquisa, que são apresentadas em detalhes:

### R.Q1: Os recursos de adaptação dos modelos SRGM são afetados pela detecção de defeitos e pelo tempo de fixação?

Ou, em termos operacionais, a tendência de ocorrência de defeitos de OSS pode ser representada por SRGM de forma semelhante, como tendência de correção de defeitos de OSS? Os modelos são ajustados aos conjuntos de dados de defeitos coletados em relação à data de detecção de defeitos (DD DS) e aos conjuntos de dados de defeitos coletados em relação à data de fixação de defeitos (DF DS), e seus R² são analisados e comparados pela adoção de análise visual e hipótese estatística testando.

O ajuste do modelo é necessário para estimar os parâmetros dos modelos e produzir uma previsão de falhas. O ajuste pode ser feito usando regressão linear ou não linear (NLR). Na regressão linear, é determinada uma linha que se ajusta aos dados, enquanto o NLR é uma técnica geral para ajustar uma curva aos dados. Os parâmetros são estimados minimizando a soma dos quadrados das distâncias entre os pontos de dados e a curva de regressão. Usaremos o ajuste de NLR devido à natureza dos dados.

NLR é um processo iterativo que começa com os valores estimados iniciais para cada parâmetro. O algoritmo iterativo então os ajusta gradualmente até convergir para o melhor ajuste, de forma que os ajustes não façam praticamente nenhuma diferença na soma dos quadrados. Os parâmetros de um modelo não convergem para o melhor ajuste se o modelo não puder descrever os dados. Consequentemente, o modelo não se ajusta aos dados. Usamos um programa comercial para ajuste de curva dos modelos aos conjuntos de dados de defeitos coletados. Em caso de convergência do ajuste da curva, usamos o teste Goodness of Fit (GOF), R² para determinar o quão bem a curva se ajusta aos dados. É definido como:

<div align='center'>
    <img src='artigos/static/ullah-morisio/formula-01.png'>
</div>

Na expressão k representa o tamanho do conjunto de dados, m(ti) representa as falhas cumulativas previstas, mi representa as falhas cumulativas reais no tempo ti e n representa o número de pontos de dados no conjunto de dados. R2 assume um valor entre 0 e 1, inclusive. Quanto mais próximo o valor de R² estiver de um, melhor será o ajuste. O valor R² é usado por sua simplicidade e é motivado pelo trabalho de Gaudoin, O. et al, que avaliou o poder de vários testes estatísticos para GOF para uma variedade de modelos de confiabilidade. A avaliação deles mostrou que esta medida era tão poderosa quanto os outros testes GOF analisados.

Para fins de representação visual, usamos boxplots: pois permitem uma comparação imediata. Consideramos um bom ajuste quando R²> 0,90 porque o ajuste do modelo pode ser considerado bom tendo R² = 0,90. Este limite categoriza os modelos como bons e ruins em termos de capacidade de ajuste. Também fazemos testes de hipótese no R² dos modelos ajustados para determinar a diferença estatisticamente significativa nos valores de ajuste dos modelos para ambos os tipos de conjuntos de dados. Portanto, formulamos hipóteses nulas e alternativas como segue.

H00: As capacidades de adaptação dos modelos SRGM para OSS não são afetadas com detecção de defeitos e tempo de fixação (ou seja, R² dos modelos ajustados ao DD DS não é diferente do R² dos modelos ajustados ao DF DS).

H0a: As capacidades de adaptação dos modelos SRGM para OSS são afetadas com detecção de defeitos e tempo de fixação (ou seja, R² dos modelos ajustados ao DD DS é melhor do que R² dos modelos ajustados ao DF DS).

De acordo com as recomendações, usamos o teste de Mann-Whitney para avaliar as diferenças práticas nas capacidades de ajuste dos modelos para ambos os tipos de conjuntos de dados. A suposição para selecionar foi a distribuição não normal de conjuntos de dados compostos por valores de R² de modelos ajustados. No teste estatístico, o nível de significância é verificado pelo valor p fornecido. Para rejeitar ou aceitar a hipótese nula, foi utilizado o valor de significância α = 5%.

### R.Q2: As qualidades preditivas dos modelos SRGM são afetadas pela detecção de defeitos e pelo tempo de correção?

Ou em termos operacionais, a precisão e exatidão das previsões dos modelos não mudam em relação à detecção de defeitos e ao tempo de correção. Usamos o histórico de falha parcial (ou seja, a primeira parte dos conjuntos de dados de defeitos coletados é usada para ajuste do modelo e a parte restante dos conjuntos de dados é usada para previsão) dos produtos para realizar a previsão como. Os primeiros dois terços dos pontos de dados de cada conjunto de dados a seguir, são usados para estimar os parâmetros. Esses valores estimados dos parâmetros são, então, aplicados a todo o intervalo de tempo para o qual os dados de falha são coletados em cada conjunto de dados, a fim de comparar as qualidades de predição dos modelos para ambos os tipos de conjuntos de dados de defeito.

A capacidade de previsão pode ser avaliada sob dois pontos de vista, precisão e correção. A precisão lida com a diferença entre o estimado e o real em um período de tempo. A correção lida com a diferença entre o previsto e o real em um ponto específico no tempo (por exemplo, data de lançamento). Um modelo pode ser preciso, mas não correto e vice-versa. Por esta razão, usamos a Estatística de Theil (TS) para precisão e Erro Relativo Previsto (PRE) para correção.

1. A estatística de Theil (TS) é a porcentagem de desvio médio de todos os pontos de dados. Quanto mais próxima a estatística de Theil estiver de zero, o melhor será a precisão da previsão do modelo. É definido como:

<div align='center'>
    <img src='artigos/static/ullah-morisio/formula-02.png'>
</div>

2. Erro relativo previsto é uma razão entre a diferença de erro (real versus previsto) e o número previsto de defeitos no ponto de tempo de previsão de falhas (por exemplo, tempo de liberação).

<div align='center'>
    <img src='artigos/static/ullah-morisio/formula-03.png'>
</div>

Semelhante ao ajuste de modelos (ou seja, R²), a precisão e exatidão da previsão dos modelos são visualmente representadas por meio de boxplots. Consideramos uma previsão boa se o TS estiver abaixo de 10% e o PRE estiver dentro da faixa [-10%, +10%] do número total de defeitos reais, porque a faixa de 10% pode ser aceitável. Esses limiares de TS e PRE categorizam os modelos como bons e ruins em termos de precisão e correção de predição. Também fazemos testes de hipótese no TS e PRE de modelos ajustados, a fim de determinar diferenças estatisticamente significativas nas qualidades de predição dos modelos para ambos os tipos de conjuntos de dados. Portanto, formulamos hipóteses nulas e alternativas como segue.

H10: As qualidades de predição dos modelos SRGM para OSS não são afetadas com o tempo de detecção e fixação de defeitos (isto é, TS e PRE de predição de modelos para DD DS não é diferente de TS e PRE de predição de modelos para
DF DS).

H1a: As qualidades de predição dos modelos SRGM para OSS são afetadas com o tempo de detecção e fixação de defeitos (isto é, TS e PRE da predição de modelos para DD DS é melhor do que TS e PRE da predição de modelos para DF DS).

Semelhante à metodologia adotada para RQ1, usamos o teste de Mann-Whitney para avaliar as diferenças práticas nas qualidades de previsão dos modelos para ambos os tipos de conjuntos de dados. A suposição para selecionar foi a distribuição não normal de conjuntos de dados compostos de valores de TS e PRE de modelos ajustados. No teste estatístico, o nível de significância é verificado pelo p-value. Para rejeitar ou aceitar a hipótese nula, foi utilizado o valor de significância α = 5%.

## 5. Coleta de dados

Em projetos OSS, a detecção de defeitos e o tempo de correção de um defeito são bastante diferentes entre si. O objetivo do estudo é analisar o crescimento da confiabilidade do OSS em relação ao tempo de detecção de defeitos versus o tempo de fixação de defeitos. Identificamos cinco projetos de código aberto notáveis ​​e ativos em apache.org (https://issues.apache.org/). Esses projetos são C++ Standard Library, JUDDI, HTTP Server, XML Beans e Enterprise Social Messaging Environment (ESME). A Apache C++ Standard Library fornece uma implementação gratuita do padrão internacional ISO / IEC 14882 para C++ que permite portabilidade do código-fonte e comportamento consistente de programas em todas as principais implementações de hardware, sistemas operacionais e compiladores, de código aberto e comerciais. JUDDI é uma implementação Java de software livre da especificação UDDI v3 (Universal Description, Discovery, and Integration) para (Web) Services. O Apache HTTP Server é um servidor HTTP de código aberto para sistemas operacionais modernos, incluindo UNIX, Microsoft Windows, Mac OS/X e Netware. XML Beans é uma ferramenta que permite acessar todo o poder do XML de uma forma amigável com Java. ESME (Enterprise Social Messaging Environment) é uma plataforma de micro-compartilhamento e micro-mensagem segura e altamente escalável que permite que as pessoas se descubram e se encontrem e tenham acesso controlado a outras fontes de informação, tudo em um contexto de processo de negócios. Todos esses projetos são considerados estáveis ​​em produção. Os 66%, 95%, 68%, 64% e 82% das issues relatadas nesses projetos, respectivamente, foram corrigidas e encerradas. Coletamos dados de defeitos dos projetos selecionados em apache.org usando JIRA. JIRA é um rastreador de issues comerciais. As issues podem ser bugs, solicitações de recursos, melhorias ou tarefas. JIRA rastreia bugs e tarefas, vincula issues ao código-fonte relacionado, planeja o desenvolvimento ágil, monitora atividades, relata o status do projeto.

Para cada lançamento dos projetos selecionados, coletamos todos as issues relatados em nossa data de observação. Para cada projeto, consideramos todos os principais lançamentos até outubro de 2012. Conseguimos obter oito (8) versões para a biblioteca C, sete (7) versões para JUDDI, duas (2) versões para o servidor HTTP padrão, cinco (5) ) versões para XML Beans e três (3) HTTP Server, cinco (5) versões para XML Beans e três (3) versões para ESME. Portanto, foram coletados dados de defeitos de 25 versões diferentes de 5 projetos. A Tabela 2 lista as informações dos projetos junto com as versões selecionadas e suas janelas de tempo para cada versão.

O software de rastreamento registra todas as informações sobre cada issue, como tipo de issue, status, data de criação, data de atualização, versão afetada. Após uma inspeção profunda dos repositórios e de sua documentação, decidimos nos concentrar nas issues que foram declarados “bug” ou “defeito”, excluindo “aprimoramento”, “solicitação de recurso”, “tarefa” ou “patch”. Pelo mesmo motivo, consideramos apenas as issues que foram relatados como fechadas ou resolvidas após a data de lançamento de cada versão. Além disso, excluímos issues fechadas antes da data de lançamento. Essas issues são normalmente encontrados nas versões candidatas (ou de teste) dos projetos. Filtramos todos as issues a fim de coletar apenas as issues que declararam “defeito” ou “bug”. Para a filtragem do problema coletado do repositório online utilizamos os atributos mencionados anteriormente. Depois de refinar os dados, agrupamos as issues em issues cumulativas por semana.

Desenvolvemos dois tipos de conjuntos de dados para cada versão de cada projeto. No primeiro tipo de conjunto de dados (ou seja, data de criação DS), agrupamos as issues em issues cumulativas por semanas em relação à data de criação das issues, enquanto no segundo tipo de conjunto de dados (ou seja, data de atualização DS) agrupamos as issues em issues cumulativos por semanas com com relação à data de atualização das issues. Dividimos todo o intervalo de tempo de cada liberação em semanas e, em seguida, contamos as issues detectadas em cada semana. Para cada versão no primeiro tipo de conjunto de dados, contamos as issues para cada semana em relação à data de criação (depois disso chamaremos a data de criação DS) e no segundo tipo de conjunto de dados contamos as issues para cada semana em relação à data de atualização (depois disso, chamaremos data de atualização DS). Desta forma, desenvolvemos 25 DS com data de criação e 25 DS com data atualizada para um total de 25 lançamentos selecionados dos cinco projetos de OSS.

## 6. Resultados

### 6.1 A: Modelos de resultados de ajuste: (RQ1)

Na Figura 1, relatamos os boxplots de R² (ou seja, valores de Goodness of Fit) por modelo para ambos os tipos de conjuntos de dados de cada versão dos projetos selecionados. Para RQ1, observando os diagramas de caixa na Figura 1, parece que há uma diferença clara. As medianas de todos os modelos estão acima do limite no caso de DS de data de criação e todos os modelos também têm boxplot estreito (sempre melhor que 0.9, o limite representado como uma linha horizontal vermelha), mas alguns outliers. Ao contrário, no caso de DS de data atualizada, os boxplots dos valores de R² mostram uma variação clara. É claro na Figura 1 que as capacidades de adaptação dos modelos aumentam no caso de DS de data de criação. Assim, sugere-se que para a caracterização da confiabilidade do OSS por meio de SRGMs as issues criadas sejam consideradas a data de criação.

Também testamos a hipótese H00 com o teste de Mann-Whitney para diferenças. O teste relata um valor de p = 0,0006344 que está abaixo do limite, α. Portanto, rejeitamos a hipótese nula, indicando que há diferença significativa de ajuste dos modelos entre as issues criadas e a data de atualização DS, o que também é representado visualmente por meio de boxplots na Figura 1.

Em suma:

1. Todos os modelos têm um ajuste muito bom (melhor do que 0,9), mas com outliers no caso de DS de data de criação, enquanto em DS de data atualizado apenas a mediana de Inflexão, Logística, Gompertz e Generalizado estão acima do limite.

2. Há uma diferença prática significativa nas capacidades de ajuste de modelos quando a data de criação das issues é usada no desenvolvimento de conjuntos de dados de defeitos de OSS para a caracterização de confiabilidade.

### 6.1 B: Modelos de resultados de previsão: (RQ2)

Para analisar as qualidades de predição dos modelos, usamos os primeiros dois terços dos pontos de dados dos conjuntos de dados para treinar o modelo e previmos o último terço. A escolha de dois terços dos pontos de dados foi motivada com a sugestão da madeira para a estabilidade do modelo. Analisamos as qualidades de previsão dos modelos em termos de precisão e correção da previsão.

#### Precisão

A Figura 2 relata os valores de TS para todos os conjuntos de dados de ambos os tipos. A linha vermelha representa o limite de 0,1, geralmente considerado um indicador de boa precisão. No DS de data de criação, todos os modelos têm uma precisão de previsão muito boa e têm boxplot estreito (sempre as medianas estão no limite 0,1, o limite representado como uma linha horizontal vermelha). No DS de data atualizado, todos os modelos não têm uma boa precisão de previsão e os boxplots mostram as variações na precisão de sua previsão. É claro na Figura 2 que os modelos aumentam a precisão da previsão no caso de DS de data de criação. Assim, sugere-se que para a caracterização da confiabilidade do OSS por meio de SRGMs os defeitos criados sejam considerados a data de criação.

Testamos a hipótese H10 com o teste de Mann-Whitney para diferenças. O teste relata um valor de p < 2.2e-16 para valores de TS de ambos os tipos de conjuntos de dados, que está abaixo do limite, α. Portanto, rejeitamos a hipótese nula, indicando que há diferença significativa das qualidades de predição dos modelos em termos de precisão de predição entre os defeitos criados e a data de atualização DS, que também é representada visualmente por meio de boxplots na Figura 2.

Em suma:

1. No DS de data de criação, todos os modelos estão próximos do limite, enquanto no DS de data atualizado todos os outros modelos têm variações.

2. Há uma diferença prática significativa na precisão da previsão dos modelos quando a data de criação dos defeitos é usada no desenvolvimento do conjunto de dados de defeitos do OSS para a caracterização da confiabilidade.

#### Exatidão

Os resultados de correção são mostrados nos boxplots da Figura 3.
As linhas vermelhas representam o intervalo ± 10% do número total de
defeitos reais.

No DS de data de criação, todos os modelos têm boxplots estreitos e suas medianas estão dentro do intervalo ± 10% do limite selecionado. Ao contrário, na data de atualização do DS, todos os modelos tendem a subestimar o número real de defeitos. Apenas a inflexão em forma de S tem mediana na faixa selecionada. Fica claro na Figura 3 que os modelos de previsão aumentam no caso de DS de data de criação. Assim, sugere-se que para a caracterização da confiabilidade do OSS por meio de SRGMs os defeitos criados sejam considerados a data de criação.

Testamos a hipótese H10 com o teste de Mann-Whitney para diferenças. O teste relata um valor p = 9,709e-05 para valores PRE de ambos os tipos de conjuntos de dados, que está abaixo do limite, α. Portanto, rejeitamos a hipótese nula, indicando que há diferença significativa das qualidades de previsão dos modelos em termos de correção da previsão entre os defeitos criados e a data de atualização DS, que também é representada visualmente por meio de boxplots na Figura 3.

Em suma:

1. No DS de data de criação, todos os modelos fornecem boa precisão e previsão, enquanto para DS de data atualizado todos os modelos se comportam inversamente.

2. Há uma diferença prática significativa na precisão da previsão dos modelos quando a data de criação dos defeitos é usada no desenvolvimento do conjunto de dados de defeitos do OSS para a caracterização da confiabilidade.

## 7. Ameaças à validade

Reconhecemos que uma primeira conclusão ameaça é que a escolha do limite não está fundamentada na literatura. No entanto, fornecemos boxplots para mostrar aos leitores que certos modelos tiveram bons desempenhos de ajuste / previsão em vários conjuntos de dados. Embora o alto número de conjuntos de dados usados possa tornar nossos achados generalizáveis, sugerimos fortemente que o leitor defina seus próprios limites para ajuste, precisão e correção das previsões e reelabore os resultados de acordo com esses limites, usando o boxplot fornecido. Notamos outra ameaça de conclusão na escolha de não realizar validação cruzada na previsão. No entanto, fundamentamos nossa escolha na literatura.

O número de lançamentos e as janelas de tempo das observações são diferentes nos cinco OSS. Isso ocorreu devido a algumas restrições de tempo e à disponibilidade dos dados nos repositórios. Como não comparamos os cinco OSS, mas queremos entender se existe um padrão de confiabilidade em cada OSS, essa diferença não é crucial.

Usamos repositório on-line aberto para coletar dados de cinco projetos diferentes. Limpamos intensamente os dados que coletamos para limitar a tendência associada à natureza aberta desses repositórios.

## 8. Discussão e Conclusão

Tentamos obter uma conclusão geral sobre o crescimento da confiabilidade do OSS aplicando oito modelos SRGM diferentes a uma ampla gama de conjuntos de dados de defeitos do OSS. Avaliamos o padrão de crescimento da confiabilidade do OSS usando SRGMs. O desempenho dos modelos difere entre conjuntos de dados de data de criação e data de atualização. Os resultados mostram uma grande diferença entre os padrões de ocorrência de falhas de DS de data de criação e DS de data de atualização, o que indica uma diferença clara no crescimento da confiabilidade do OSS com relação à data de criação de defeito e data de correção de defeito. A partir dos resultados deste estudo, sugere-se que, para a caracterização da confiabilidade dos defeitos de OSS, a data de criação deve ser considerada porque a confiabilidade do OSS aumenta diretamente com a data de criação dos defeitos. Os resultados também mostram que o SRGM pode ser usado para o OSS de caracterização de confiabilidade e suas capacidades de ajuste e qualidades de previsão diretamente relacionadas à data de criação de defeitos, em vez da data de atualização/correção de defeitos. Este estudo torna mais claros os resultados pouco claros relatados na literatura a respeito da aplicabilidade de SRGMs para caracterização da confiabilidade do OSS.

Em nossos estudos anteriores observamos comportamentos diferentes dos melhores modelos para OSS em comparação com CSS (Software de Código Fechado). Os modelos de melhor desempenho foram Musa Okumoto e Inflection para conjuntos de dados industriais, enquanto Gompertz e Inflection foram os melhores para conjuntos de dados OSS. Portanto, investigamos profundamente o ajuste dos modelos e os resultados da previsão com foco nesta observação. Observamos que todas as qualidades de ajuste e predição de modelos em forma de S para OSS são melhores do que as de formato côncavo, por isso Musa é o mais adequado para CSS, mas não para OSS, por causa de sua natureza côncava. Embora Gompertz e Inflection pertençam à categoria S-Shaped e, como tal, indica uma fase inicial de aprendizagem na qual a comunidade de usuários finais e revisores do projeto de código aberto não reage prontamente ao novo lançamento. Portanto, por causa dessa natureza em forma de S, a inflexão em forma de S e Gompertz superou em OSS do que o modelo de Musa Okumoto.

Os resultados deste estudo mostram que os modelos SRGM podem caracterizar o crescimento da confiabilidade do OSS. Para modelagem de confiabilidade de OSS, a data de criação do defeito deve ser usada para desenvolver conjuntos de dados de defeitos de OSS a fim de caracterizar o crescimento de sua confiabilidade por meio de modelos de confiabilidade de software.


