# Modelo de confiabilidade de software de código aberto: uma abordagem empírica

# Resumo

Coletamos dados de rastreamento de bugs de alguns projetos de código aberto populares e investigamos os padrões de relatórios de bugs relacionados ao tempo deles. Os resultados indicam que ao longo de seu ciclo de desenvolvimento, os projetos de código aberto apresentaram padrão de crescimento de confiabilidade semelhante ao projetos de código fechado. Chegadas de bugs da maioria dos projetos de código aberto estabilizarão em um nível muito baixo, embora, em comparação, nenhuma atividade de teste forma esteja envolvida. Este ponto de estabilização seria visto como o ponto maduro para consideração de adoção. 

Os resultados também mostram que a distribuição Weibull geral oferece uma maneira possível de estabelecer o modelo de confiabilidade. Além disso, medidas populares, como visualizações de página e download, não estão altamente correlacionadas com a taxa de chegada de bug e podem não ser medidas adequadas para a qualidade de um projeto.

## 1. Introdução

O software de código aberto tem atraído atenção significativa nos últimos anos. O relatório mostra que alguns dos principais produtos de software de código aberto ultrapassaram seus equivalentes comerciais em participação de mercado e avaliação de qualidade. Eles não apenas atraem indivíduos que desejam software de alta qualidade e não podem pagar uma versão comercial cara, mas também se tornam bons candidatos em muitas empresas ou planos de Tecnologia da Informação de governos. Pesquisa realizada pelo CIO no final de 2002 revelou que a comunidade de TI está ficando mais confortável com o modelo de desenvolvimento de código aberto e a maioria (64%) das empresas pesquisadas está usando código aberto, mais frequentemente como servidor web, sistemas operacionais de servidor e para desenvolvimento web. As taxas de adoção estão ficando muito substanciais na área de servidor e sistema operacional, em que dois produtos dominantes, Apache e Linux, já configuraram suas marcas com qualidade comprovadas. No entanto, ainda existem muitas outras áreas em que as pessoas hesitam em escolher produtos de código aberto. Uma pesquisa empírica recentemente publicada pela Forrester sugere que, embora a maioria das empresas europeias tenha planos claros de adoção de código aberto. Ainda existem medos e questões não resolvidas, especialmente para empresários e gerentes de projeto. Dois temos comuns, que também foram delineados por Ray Lane, ex-executivo da Oracle, em uma palestra principal na conferência de código aberto de 2004, são a falta de suporte formal e a velocidade das mudanças. Todos esses medos e preocupações podem ser rastreados até a qualidade e confiabilidade dos produtos de código aberto.

O modelo de confiabilidade de software tem sido usado há muito tempo como o indicador mais importante e bem-sucedido da qualidade do software quando ele chega ao mercado. Os modelos amplamente usados na indústria incluem o modelo de Rayleigh, que modela todo o ciclo de vida do software como a curva de Rayleigh e tem sido usado para projetar defeitos de software latentes quando o trabalho de desenvolvimento é concluído e o produto está pronto para ser enviado aos clientes. Outro modelo amplamente utilizado é o modelo exponencial, às vezes chamado de modelo de crescimento de confiabilidade, que tem sido usado para modelar o padrão de chegada de defeitos no backend do desenvolvimento com o objetivo de projetar o padrão de falha em campo também. Ambos os modelos são suportados por um grande corpo de dados empíricos. A maioria dos dados está intimamente relacionada ao processo de desenvolvimento e provém de grandes softwares comerciais. Projetos de código aberto têm um procedimento muito diferente com projetos comerciais de código fechado. O contraste foi ilustrado por Eric Raymond como modelo "Bazar" e "Catedral". A conveniência de usar esses modelos para projetar a qualidade do projeto de código aberto ao tomar decisões de adoção permanece uma questão em aberto. Outras métricas desenvolvidas na indústria de software para acessar o ambiente de desenvolvimento e a capacidade de uma empresa, como a classificação CMM, estão fortemente associadas ao processo.

Nenhum método ou métrica maduro ainda foi desenvolvido para avaliar a qualidade dos projetos de código aberto. Exceto por alguns grandes nomes como Gnome, Linux, Mozilla, Apache e assim por diante, as pessoas fazem julgamentos sobre produtos de código aberto com base em critérios relativamente arbitrários. Grandes hosts de projetos de código aberto, como sourceforge.net, listam fatos (como tamanho de projeto, número de desenvolvedores) e estatísticas simples (classificação de atividade, download semanal, visualização de página, commits de CVS e assim por diante) para ajudar potenciais adotantes a avaliar a qualidade de projetos de origem. O problema é que há muitos fatores envolvidos e as pessoas simplesmente não sabem qual deles examinar ou quando um software de código aberto está maduro o suficiente para adoção. 

O objetivo dessa pesquisa é construir um modelo geral de confiabilidade para projetos de software de código aberto para ver se é possível destacar alguns recursos-chaves e momentos críticos que podem ajudar na tomada de decisão de adoção. Também verificaremos as correlações entre padrões de chegada de bug e estatísticas populares, como visualização de página e padrões de download, para ver se essas estatísticas populares poderiam usadas como medidas de qualidade alternativas.

## 2. Modelos de Confiabilidade

A família de distribuição Weibull é talvez o modelo de distribuição vitalício mais amplamente usado. Sua forma mais simples, a distribuição de Weibull de 2 parâmetros, tem sido usada há muito tempo para modelar padrões de confiabilidade devido à sua capacidade de descrever modos de falha como inicial, aleatório e de desgaste. Dados de software comercial de grande porte sugerem duas formas especiais de distribuição de Weibull, Distribuição Rayleigh e Distribuição expoencial, foram aplicadas em modelos de confiabilidade de software.

A distribuição de Weibull de 2 parâmetros tem a função de distribuição de probabilidade modelada da seguinte forma:

<div align='center'>
    <img src='artigos/static/zhow-davis/formula-01.png'>
</div>

Onde t representa tempo; α = 1 / λ representa o parâmetro de escala da distribuição; β representa o padrâmetro de forma de distribuição. A função de densidade de probabilidade Weibull é monótona decrescente se β <= 1e se tem a forma de sino quando β > 1. Quanto maior o valor de β mais íngreme é a forma do sino. O caso especial da distribuição de Rayleigh ocorre quando o β==2. Enquanto que a distribuição tem a forma exponencial quando β==1. A figura 1 mostra várias curvas de densidade de probabilidade Weibull com valores variáveis para parâmetro de forma β.

<div align='center'>
    <img src='artigos/static/zhow-davis/figura-01.png'>
</div>

Na engenharia de qualidade de software, um grande corpo de dados empíricos apóia a descoberta de que os projetos de software seguem um padrão de ciclo de vida descrito pela curva de Rayleigh. Isso é considerado um padrão desejável, uma vez que a taxa de chegada de bug se estabiliza em um nível muito baixo. Em software de código fechado, o comportamento de estabilização é geralmente um indicador de término do esforço de teste e liberação do software para o campo. O ciclo de desenvolvimento, da perspectiva da qualidade, é dividido em seis fases:
- Inspeção de projeto de alto nível
- Inspeção de projeto de baixo nível
- Inspeção de código
- Teste de unidade
- Teste de componente
- Teste de sistema

As chegadas de bugs geralmente atingem o pico na fase de inspeção do código e ficam bastante estabilizadas na fase de teste do sistema.

## 3. Coleta de dados

No estágio de coleta de dados, primeiro identificamos alguns projetos de código aberto de acordo com o tamanho do produto. Os principais critérios de seleção incluem duração e atividade do projeto. Novos projetos com menos de um ano de história geralmente não serão capazes de contribuir com informações úteis suficientes. Um fenômeno típico associado a muitos projetos de código aberto é que eles podem ficar muito ativos e ficar muito inativos durante o período do projeto. Para classificar os projetos de acordo com as atividades, o SourceForge.net desenvolveu uma medida de atividade. Leva em consideração o número de downloads, o número de vezes que é mencionado no fórum e outras medidas e os combina para formar um índice de atividades. Escolhemos nossos projetos-alvos seguindo a lista de classificação "Mais ativa" do SourceForge em agosto de 2004. Os projetos identificados estão listados na tabela 1, juntamente com suas características proeminentes. Os nomes reais dos projetos não foram revelados para seguir a ética da engenharia de software padrão.

<div align='center'>
    <img src='artigos/static/zhow-davis/tabela-01.png'>
</div>



Coletamos principalmente informações sobre bugs abertos por mês. SourceForge fornece estatísticas simples sobre o bug relatado mensalmente. No entanto, essas estatísticas mostram todos os bugs relatados, sejam eles válidos ou não. A cada mês, alguns bugs são relatados e excluídos pelo proprietário do projeto ou pelo membros do desenvolvimento principal. Eles são considerados bugs inválidos por vários motivos, e para nossa medida, eles precisam ser desconsiderados para maior precisão. Além disso, essas estatísticas são coleções de todos os produtos de software sob um título de projeto, para o nosso caso, é mais sensato diferenciar os diferentes produtos. Felizmente, o SourceForge mantém uma descrição detalhada de cada bug relatado, seus status e o componente ao qual pertence. Usamos a função de consulta fornecida para isolar bugs de um determinado componente, bem como o relatório excluído de cada mês e excluí-los de nossos dados. Consequentemente, os dados originais que obtivemos para bugs abertos mensalmente são ligeiramente diferentes daqueles relatados nas estatísticas do SourceForge.

## 4. Análise de dados
## 4.1. Tendência geral de chegada de bug

Nós plotamos os números dos bugs relatados de cada mês ao longo da linha do tempo na figura 2 para obter uma visão geral de um possível padrão. Os oito projetos foram apresentados em três gráficos separados com base na taxa média mensal. Os dados mostram uma tendência semelhante em todos os projetos, exceto para alguns projetos de ainda estão em sua infância. A taxa mensal de chegada de bugs sobe lentamente até atingir um pico, então começa a diminuir, estabilizando em um nível bastante baixo. Isso forma uma curva em forma de sino. A tendência é consistente nos projetos PrA, PrE, PrF, PrD, PrG e PrH. Dois outro projetos, PrB e PrC, são registrados por curto período (cerca de 1 ano). A partir do segundo gráfico da figura 2, fica claro que a chegada de bug ainda está ativa nesses dois projetos. Como a taxa de bug mensal continua aumentando, é difícil dizer neste estágio se eles atingirão o pico e então diminuirão para um estado de estabilização.

<div align='center'>
    <img src='artigos/static/zhow-davis/figura-02-grafico-01.png'>
    <figcaption align='center'>
        <b>Figura 2 - Gráfico 1</b>
    </figcaption>
</div>

<div align='center'>
    <img src='artigos/static/zhow-davis/figura-02-grafico-02.png'>
    <figcaption align='center'>
        <b>Figura 2 - Gráfico 2</b>
    </figcaption>
</div>

<div align='center'>
    <img src='artigos/static/zhow-davis/figura-02-grafico-03.png'>
    <figcaption align='center'>
        <b>Figura 2 - Gráfico 3</b>
    </figcaption>
</div>

Os dados mensais do bug revelam um padrão claro e existem famílias de modelos na análise dos dados do processo de falha que se enquadram nessa distribuição geral. No entanto, nos concentraremos na distribuição Weibull, que há muito tem demonstrado sua adequação na análise de confiabilidade em relação ao tempo e a falhas.

## 4.2. Modelo de crescimento de confiabilidade

O modelo de regressão não linear weibull de dois parâmetros que usamos para construir a relação de tempo e taxa de chegada do bug é:

<div align='center'>
    <img src='artigos/static/zhow-davis/formula-02.png'>
</div>

Onde y é a taxa de chegada de bug mensal, β é o parâmetro de forma, e λ é parâmetro de escala. O procedimento de regressão não linear SPSS é empregado para implementar o modelo weibull geral e para estimar os parâmetros. A tabela 2 lista as estimativas dos parâmetros de escala e formato. Os valores reais e as curvas esperadas para todos os projetos são plotados na figura 3, respectivamente.

<div align='center'>
    <img src='artigos/static/zhow-davis/tabela-02.png'>
</div>

O R² indica bom ajuste para alguns projetos como PrA, PrF, PrH e PrG. Os outros dois projetos, PrE e PrD, têm um valor de R² muito baixo, indicando baixas correlações entre o tempo e a taxa de chegada de bug. Não rodamos a regressão em PrB e PrC. Eles foram registrados há menos de dois anos e os pontos de dados disponíveis são menos do que adequados para a análise de dados censurados.

Embora na maioria dos casos, o valor estimado de β é em torno de 2, também há casos que o β possui altos valores (5.29 no caso do projeto PrA). Isso sugere que a distribuição Weibull é uma possível candidata para modelar o padrão de confiabilidade de código aberto, embora o caso especial da distribuição de Rayleigh não seja adequado em alguns casos.

PrE e PrD são projetos típicos de código aberto. Eles foram iniciados com projetos de código aberto e continuam a evoluir com uma única base de código. Ambos são classificados como estáveis no SourceForge e têm um grande número de downloads por mês. O PrE tem oito desenvolvedores e esteve ativo a maior parte de seu ciclo de vida. PrD possui apenas um desenvolvedor e seus índices de atividade apresentam grandes variações ao longo de seu ciclo de vida. Nenhum deles está perto de um nível de chegada de bug estável. Uma possível explicação sugerida por Samoladas el. al é que às vezes os coordenadores de projeto de código aberto faziam mudanças abruptas entre os lançamentos subsequêntes; isso pode resultar em mudanças na estrutura do código e, portanto, na taxa de chegada de bug. Para extrair a razão por trás de tais fenômenos anormais, é necessário um exame detalhado do projeto individual.

<div align='center'>
    <img src='artigos/static/zhow-davis/figura-03-grafico-01.png'>
    <figcaption align='center'>
        <b>Figura 3 - Gráfico 1</b>
    </figcaption>
</div>

<div align='center'>
    <img src='artigos/static/zhow-davis/figura-03-grafico-02.png'>
    <figcaption align='center'>
        <b>Figura 3 - Gráfico 2</b>
    </figcaption>
</div>

<div align='center'>
    <img src='artigos/static/zhow-davis/figura-03-grafico-03.png'>
    <figcaption align='center'>
        <b>Figura 3 - Gráfico 3</b>
    </figcaption>
</div>

<div align='center'>
    <img src='artigos/static/zhow-davis/figura-03-grafico-04.png'>
    <figcaption align='center'>
        <b>Figura 3 - Gráfico 4</b>
    </figcaption>
</div>

<div align='center'>
    <img src='artigos/static/zhow-davis/figura-03-grafico-05.png'>
    <figcaption align='center'>
        <b>Figura 3 - Gráfico 5</b>
    </figcaption>
</div>

<div align='center'>
    <img src='artigos/static/zhow-davis/figura-03-grafico-06.png'>
    <figcaption align='center'>
        <b>Figura 3 - Gráfico 6</b>
    </figcaption>
</div>

## 4.3. Padrão de chegada de bug vs. Visualização de página e número de downloads

Também coletamos dados sobre visualização de páginas e download para os seis projetos. Os dados são exportados diretamente das estatísticas do SourceForge. A tabela 3 lista os coeficiêntes de correlação da taxa de chegada de bug mensal vs visualização de página e taxa de bug mensal vs download de 6 projetos. Novamente, vários projetos contaram várias histórias. Entre os seis projetos que examinamos, apenas um projeto demonstra forte correlação entre as taxas mensais de chegada de bug e os números mensais de visualização de página e download. Todos os demais projetos revelaram correlações relativamente baixas entre essas varáveis. A relação entre chegada de bug e download, contagem de visualizações de página é bastante complexa. Uma visão comum dentro da comunidade de código aberto, conforme expressa por Eric Raumond, que afirma, "Havendo olhos suficientes, todos os erros são óbvios", sugere implicitamente uma relação positiva entre o número de usuários e o número de bugs encontrados. Nossa investigação preliminar não tenta construir um quadro geral da interrelação entre essas variáveis. É ante um esforço inicial de examinar a correlação entre vários indicadores de qualidade possíveis. A correlação geralmente baixa entre downloads e taxa de chegada de bugs suporta parcialmente as observações feitas por Mockus el. al. que a maioria dos bugs foi relatada por uma comunidade de desenvolvedores relativamente pequena ao invés de usuários finais.

Isso também significa que, para a maioria dos projetos, o número de visualizações de página e download pode medir o nível de aceitação do usuário de um projeto, mas não podem ser usados como medida de qualidade.

<div align='center'>
    <img src='artigos/static/zhow-davis/tabela-03.png'>
</div>

## 5. Conclusão

Nosso estudo envolveu apenas 8 projetos populares de código aberto, todos eles ainda em desenvolvimento. Consequentemente, apenas conclusões provisórias puderam ser tiradas dos resultados. Algumas observações possíveis dos resultados deste estudo são:

1. Ao longo de seu ciclo de desenvolvimento, os projetos de código aberto exibem um padrão de crescimento de confiabilidade semelhante ao de projetos de código fechado. Chegadas de bugs da maioria dos projetos de código aberto se estabilizarão em um nível muito baixo, mesmo que nenhuma atividade de teste formal esteja envolvida.

2. A distribuição geral de Weibull é uma forma possível de estabelecer o modelo de confiabilidade. As estimativas do parâmetro de forma de vários projetos de código aberto são diferentes, indicando que, em contraste com os projetos de código aberto, é improvável que se encontre um caso especial como a curva de Rayleigh para modelar todos os projetos de código aberto. Pode ser a melhor maneira de modelar projetos individuais de código aberto separadamente. A análise de série temporal seria apropriada para prever bugs latentes em projetos individuais de código aberto. A evidência de que a maioria dos projetos de código aberto demonstra altos e baixos sazonais também torna a análise de série temporal uma escolha favorável para fins preditivos.

3. Medidas populares como visualização de página e downloads não são altamente correlacionadas com a taxa de chegada de bug e não são medidas adequadas para a qualidade de um projeto.


