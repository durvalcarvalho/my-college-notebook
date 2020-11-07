# Predição inicial de falhas de software usando dados de defeitos em tempo real

## Resumo

A qualidade de um componente de software pode ser medida em termos de propensão a falhas de dados. As estimativas de qualidade são feitas usando dados de tendências a falhas disponíveis de tipos de projetos semelhantes desenvolvidos anteriormente e os dados de treinamento consistindo em medições de software. Para prever módulos defeituosos em dados de software, diferentes técnicas foram propostas, incluindo métodos estatísticos, métodos de aprendizado de máquina, técnicas de redes neurais e técnicas de agrupamento. O objetivo da abordagem proposta é investigar se as métricas disponíveis no início do ciclo de vida (ou seja, métricas de requisitos) e métricas disponíveis no final do ciclo de vida (ou seja, métricas de código), combinadas com as métricas disponíveis no ciclo de vida tardio pode ser usado para identificar módulos sujeitos a falhas usando técnicas de agrupamento. Esta abordagem foi testada com três conjuntos de dados de defeitos em tempo real de projetos de software da NASA (JM1, PC1 e CM1). A previsão de falha no início do ciclo de vida do software pode ser usada para melhorar o controle do processo do software e obter alta confiabilidade do software. Os resultados mostram que quando todas as técnicas de predição são avaliadas, o melhor modelo de predição é a fusão do modelo de métrica de requisito e código.

## 1. Introdução

Uma falha de software é um defeito que causa falha de software em um produto executável. Na engenharia de software, a não conformidade do software com seus requisitos é comumente chamada de bug. Os engenheiros de software distinguem entre falhas (faults) de software, defeitos de software (failures) e bugs(erros) de softwares. Em casos de falha (failure), o software não faz o que o usuário espera, mas por outro lado, a um defeito (fault) é um erro de programação oculto que pode ou não se manifestar como uma falha e a não conformidade do software com seus requisitos é comumente chamada de bug (erro).

Para prever falhas, diferentes medidas métricas estão disponíveis. As métricas disponíveis durante o desenvolvimento de código estático, como complexidade Halstead, complexidade McCabe, podem ser usadas para verificar os módulos quando à propensão a falhas. Fenton oferece um exemplo onde a mesma funcionalidade do programa é alcançada usando diferentes construções de linguagem de programação, resultado em diferentes medidas estáticas para aquele módulo. Fenton usa este exemplo para argumentar a inutilidade dos atributos de código estático. Portanto, usar apenas recursos estáticos pode não ser informativo.

Um módulo atualmente em desenvolvimento está sujeito a falhas se um módulo com produto semelhante ou métricas de processo em um projeto anterior desenvolvido no mesmo ambiente estava sujeito a falhas. Portanto, as informações disponíveis no início do projeto atual ou do projeto anterior podem ser usadas para fazer previsões. Embora as métricas de requisitos sozinhas não sejam as melhores para localizar as falhas, essas métricas podem aumentar a previsão de desempenho.

É necessário que os modelos de previsão sujeitos a falhas sejam eficientes e precisos. Assim, combinações de recursos estático extraídos de requisitos e código podem ser excepcionalmente bons preditores para identificar módulos que realmente contêm falhas.

Para prever a falha em dados de software, uma variedade de técnicas foi proposta, incluindo métodos estatísticos, métodos de aprendizado de máquina, técnicas de redes neurais e técnicas de agrupamento. Muito do trabalho foi feito para verificar a qualidade com métodos estatísticos e métodos de aprendizado de máquina usando métricas de código estático ou de requisito. Mas muito poucos trabalharam para encontrar os módulos com e sem defeitos usando técnicas de agrupamento. No entanto, estimar a qualidade usando técnicas de agrupamento na fusão de requisitos e métricas de código ainda não foi proposto na literatura. A previsão de módulos sujeitos a falha fornece uma maneira de apoiar a engenharia de qualidade de software por meio da melhoria da programação (scheduling) e controle dos projetos.

## 2. Algoritmos de clustering

Clustering é uma abordagem que usa dados de medição de software que consistem em dados limitados ou sem tendência a falhas para analisar a qualidade do software. Neste estudo, o algoritmo de agrupamento K-Means está sendo usado para modelos preditivos para prever módulos defeituosos / não defeituosos. K-means classificam dados em diferentes grupos de k, sendo k um número inteiro positivo, com base nos atributos ou alguns recursos. O agrupamento de dados é feito com base na minimização da soma dos quadrados das distâncias entre os dados e seu centróide de cluster.

Esta abordagem é um esquema iterativo que permite a classificação de dados em módulos com e sem falhas com base na distância euclidiana entre os pontos de dados.

Finalmente, a Curva ROC foi traçada usando o valor de recall que é usado para comparar todos os três modelos, ou seja, modelo de métricas estáticas, modelos de métricas de requisito e combinações de modelo de métricas de requisito e código.

## 3. Metodologia

Em primeiro lugar, as métricas de dados da fase de requisitos e atributos de código estrutural de sistema de software foram coletados do repositório de dados do NASA Metrics Data Program (MDP). O repositório MDP contém dados de 13 projetos, dos quais apenas 3 dados de projetos incluem métricas de requisitos. Esses três projetos são CM1 (escrito em C), contendo aproximadamente 505 módulos, JM1 (escrito em C++), contendo 10878 módulos, PC1 (escrito em C), contendo 1107 módulos. CM1 é um instrumento de nave espacial da NSA, JM1 é um sistema terrestre em tempo real e PC1 é um sistema de satélite em órbita terrestre. Depois de coletar e refinar os dados dos projetos da NASA, as métricas de requisitos e métricas de módulo dos projetos acima foram reunidas usando o método de junção interna (inner join method).

Clustering é uma técnica que divide os dados em dois ou mais clusters, dependendo de alguns critérios. Como, neste estudo, os dados são divididos em dois clusters, dependendo se eles são livres de falhas ou propenso a falhas. Em seguida, encontre o algoritmo adequado para agrupar os componentes de software em sistemas com falha / sem falhas. Os modelos de previsão de qualidade de software procuram prever fatores de qualidade, como se um componente está sujeito a falhas ou não. Os métodos para identificar o suporte aos módulos de software propensos a falhas ajudam a melhorar o planejamento e a programação de recursos, além de facilitar a redução de custos por meio de uma verificação eficaz. Tais modelos podem ser usados para prever a variável de respostas que pode ser a classe de um módulo (por exemplo, sujeito a falhas ou não sujeitos a falhas) ou um fator de qualidade (por exemplo, número de falhas) para um módulo. No entanto, várias práticas de engenharia de software limitam a disponibilidade de dados de tendência a falhas. Como o seu efeito, não é possível implementar clustering supervisionado para analisar a qualidade do software. Esses dados de propensão a falhas limitados podem ser agrupados usando agrupamento semi-supervisionado. É um esquema de agrupamento baseado em restrições que usa o conhecimento de domínio de especialista em engenharia de software para criar clusters iterativamente como livres ou sujeitos a falhas.

Para prever os resultados, usamos a matriz de confusão. A matriz de confusão tem quatro categorias: 
- Os verdadeiros positivos (TP) são os módulos classificados corretamente como módulos com falhas.
- Os falsos positivos (FP) referem-se a módulos sem falhas incorretamente rotulados como defeituosos.
- Os negativos verdadeiros (TN) são os módulos sem falhas corretamente rotulados como tal.
- Falsos negativos (FN) referem-se a módulos com falhas classificados incorretamente como módulos sem falhas.

<div align='center'>
    <img src='artigos/static/sandhu-brar/table-01.png'>
</div>

Os seguintes conjuntos de medidas de avaliação está sendo usado para encontrar os resultados:

- Propabilidade de Detecção (PD), também chamada de recall ou especificidade, é definida como a probabilidade de classificação correta de um módulo que contém uma falha.

<div align='center'>
    PD = TP / (TP + FN)
</div>

- Probabilidade de alarmes falsos (PF) é definida como a proporção de falsos positivos para todos os módulos sem defeito.

<div align='center'>
    FP = FP / (FP + TN)
</div>

Basicamente, o PD deve ser o maximizado, e o PD o minimizado.

## 4. Curva ROC

ROC é um acrônimo para Receiver Operator Characteristic (característica do operador receptor); é um gráfico de PD versus PF em todas as compinações experimentais possíveis. A análise ROC está relacionado de uma forma direta e natural à análise de custo / benefício de projeto de software, comparando seus módulos defeituosos e não defeituosos detectados. A curva ROC fornece uma visão melhor para comparações entre diferentes valores paramétricos. A curva ROC para a abordagem descrita é apresentada na figura 1. Os valores de PD e PF variam de 0 a 1. O gráfico é traçado ao longo do eixo X e do eixo Y variando de 0 a 1. Os pontos plotados na figura 1 representam a comparação visual do desempenho de classificações dos modelos preditivos.

<div align='center'>
    <img src='artigos/static/sandhu-brar/figura-01.png'>
</div>

A curva ROC típica tem forma côncava com o ponto (0,0) como o início e o ponto (1,1) como final. A curva ROC é dividida em quatro regiões diferentes:
- Região do custo adverso
- Região de risco adverso
- Curva negativa 
- Região sem informação.

Na figura 1, uma linha reta conectando os pontos (0,0) e (1,1) implica que o desempenho de um classificador não é melhor do que adivinhação aleatória. Na figura 1, os pontos denominados A e B se enquadram na região adversa ao risco, indica alto PD e alto PF, esta situação é melhor para sistemas críticos de falhas e mais importante do que o custo para validar alarmes falsos. Na figura 1, os pontos marcados como A, B, C e D na curva ROC não fornecem informações sobre a propensão a falhas dos módulos.

A curva negativa no gráfico ROC compreende pontos de dados com baixo PD e alto PF. Nas práticas de engenharia de software, o PD alto e o PF baixo especificam que o número máximo de módulos foi classificado corretamente. Conforme o PD diminui e o PF aumenta, a probabilidade de que os módulos possam ser classificados incorretamente aumenta. Mas isso não é necessáriamente uma má notícia porque pode ser transposta para uma curva preferida quando o classificador nega seus testes.

## 5. Resultado e Discussões

Os conjuntos de dados NSA MDP são usados nesta abordagem para estimar a qualidade de um produto de software. Os conjuntos de dados usados são CM1, JM1 E PC1, pois esses são os únicos três projetos no repositório MDP que incluem métricas de requisitos. Usamos métricas de requisitos, métricas de código e juntamos as métricas de requisitos e código conforme especificado para modelagem. Esses modelos de predição são usados como clustering k-means para localizar os módulos com e sem falha em um produto de software e, em seguida, localizar o melhor modelo de predição entre dados.

A abordagem proposta foi implementada no MATLAB 7.1. A técnica de clustering usada é uma função embutida em sua caixa de ferramentas de estatísticas. Essas funções são usadas com seus parâmetros padrão.

O conjunto de dados JM1 é usado como um dado de treinamento para avaliar a qualidade calculando o valor de recall. Os conjuntos de dados PC1 e CM1 são usados como dados de teste para verificar qual dos três modelos de predição resulta ser o melhor para estimar as medidas de qualidade usando diferentes algoritmos de agrupamento, para verificar a necessidade de teste e garantia de qualidade. Para comparar os resultados, o PD deve ser máximo e o PF deve ser mínimo. Esses valores podem varia de 0 a 1.

<div align='center'>
    <img src='artigos/static/sandhu-brar/table-02.png'>
</div>

A tabela 2 mostra os resultados de uso de agrupamentos K-Means no conjunto de dados JM1 como dado de treinamento e usando as métricas de requisitos de CM1 e PC1 para calcular seus verdadeiros positivos, verdadeiros negativos, falsos positivos, falsos negativos, probabilidade de detecção e probabilidade de alarmes falsos. Os resultados mostram que o desempenho não é eficiente.

<div align='center'>
    <img src='artigos/static/sandhu-brar/table-03.png'>
</div>

A tabela 3 fornece os resultados dos modelos de métrica de código estático de CM1 e PC1. Aqui, PD e PF como 0 indicam que o desempenho não é muito melhor e os resultados são quase os mesmos do modelo de métrica de requisito. Portanto, essas métricas podem ser eficazes se puderem ser combinadas.

<div align='center'>
    <img src='artigos/static/sandhu-brar/table-04.png'>
</div>

A tabela 4 mostra os resultados do modelo extraído de requisitos e métricas estáticas.

Portanto, o desempenho observado aqui é que as situações de engenharia de software do mundo real podem ser melhor representadas pelos conjuntos de dados de treinamento/teste após as operações de junção interna em seus requisitos e métricas de código. As informações fornecidas pelas métricas estáticas e de requisito de todos os três conjuntos de dados são inúteis para os gerentes, já que a apenas 30% dos módulos estão na categoria exata livre de falhas / sujeito a falhas.

O PD e o PF do modelo derivado da combinação de requisitos e métricas de código são muito mais preciosos do que os modelos previamente propostos na literatura para produção de tolerância falhas em sistemas de software. O modelo desenvolvido pode ser usado para classificar um sistema defeituoso de um sistema não defeituoso com base nos atributos estruturais dos sistemas de software.

## 6. Conclusão

Neste estudo, prevemos que conhecer os dados propensos a falhas nos estágios iniciais do ciclo de vida combinados com os dados disponíveis durante o código pode ajudar os gerentes de projetos a construir os projetos com mais precisão e reduzirá os esforços de teste, pois as áreas com falhas já estão previstas, portanto, módulos podem ser manipulados adequadamente. O principal benefício de usar o modelo de fusão é que ele fornece resultados mais precisos do que os modelos individuais e, portanto, pode ajudar a melhorar a produtividade do produto. Os dados disponíveis nos estágios iniciais podem ajudar o analista a planejar os recursos necessários como e quando necessários para desenvolver e testar. Como a qualidade do software é um componente vital de qualquer desenvolvimento de software, esses modelos estão sendo usados para alcançar a melhoria da qualidade do software e precisão dos projetos. No entanto, uma investigação mais aprofundada pode ser feita e o impacto dos atributos na previsão de falha pode ser encontrado. Além disso, mais algoritmos podem ser avaliados e então podemos encontrar o melhor algoritmo.




