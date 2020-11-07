# Crescimento da confiabilidade do software de código aberto usando análise de defeitos

## Resumo

Examinamos dois produtos de código aberto populares e ativos para observar se o software de código aberto tem ou não uma taxa de chegada de defeitos diferente do software desenvolvido internamente. A avaliação usou dois modelos comuns de modelos de crescimento de confiabilidade; côncava e em forma de S e esta análise mostra que o código aberto tem um perfil diferente de chegada de defeitos. Outras investigações indicaram que a instabilidade do projeto de baixo nível é uma possível explicação do perfil de crescimento de defeito diferente.

## 1. Introdução

O desenvolvimento de software de código aberto ganhou popularidade em todo o mundo. Como o desenvolvimento de código aberto não adere necessariamente à engenharia de software tradicional, particularmente na área de teste formal, a qualidade do software de código aberto precisa ser examinada. No modelo de código aberto, os processos de garantia de qualidade são realizados de maneira diferente da engenharia de software tradicional.

A confiabilidade é uma das características mais importantes da qualidade do software quando considerada para uso comercial. A adoção de produtos confiáveis ​​de código aberto para uso comercial pode ser um verdadeiro desafio. Embora os produtos de software de código aberto forneçam rotineiramente informações sobre a classificação da atividade do produto, o número de desenvolvedores e o número de usuários ou downloads, essas informações não transmitem informações sobre a qualidade do produto de código aberto.

Aqui, medimos a confiabilidade do produto de software de código aberto usando uma abordagem frequentemente usada no desenvolvimento de software comercial. Como medir o crescimento de defeitos é uma boa maneira empírica de avaliar a qualidade do software, investigamos se o software de código aberto tem ou não uma taxa de chegada de defeitos diferente em comparação com o software desenvolvido internamente. Se isso acontecer, novos testes e modelos para analisar a confiabilidade do código-fonte aberto devem ser desenvolvidos. Caso contrário, os mesmos testes de confiabilidade do produto podem ser aplicados.

Primeiro, descrevemos os modelos comuns usados para medir a confiabilidade do software. Em seguida, descrevemos os conjuntos de dados de defeitos usados neste exame e discutimos qual modelo de crescimento de confiabilidade se ajusta melhor aos conjuntos de dados. Em seguida, descrevemos resumidamente as classificações de defeitos e discutimos mais resultados do perfil de código aberto antes de tirar algumas conclusões e observar nossa direção futura.

## 2. Modelos de análise de confiabilidade de software

Modelos de crescimento de confiabilidade, que são análises estatísticas de dados de falha de software durante o desenvolvimento, tradicionalmente lidam com a previsão depois de fazer algumas suposições fundamentais sobre o processo de detecção de erros. Os modelos são medidas essenciais durante a fase de teste de desenvolvimento de software para examinar o grau de confiabilidade e, portanto, a qualidade do produto desenvolvido.

Atributos dos modelos de confiabilidade foram geralmente definidos em relação ao tempo com quatro maneiras gerais de caracterizar a confiabilidade: tempo de falha, intervalo de tempo entre falhas, número cumulativo de falhas até um período de tempo e falha encontrada em um intervalo de tempo. Um modelo popular compara os números cumulativos de falhas ao tempo de uso cumulativo (pode ser tempo de calendário ou tempo de execução).

Quando plotados ao longo do tempo, a maioria dos modelos de crescimento de confiabilidade são representados pela curva Côncava ou em forma de S [16]. O modelo de Poisson não homogêneo de Goel-Okumoto [8] e o modelo de Musa estão entre os primeiros modelos de confiabilidade que apresentam curva de crescimento côncava (também chamada de exponencial). O modelo Goel-Okumoto assume que um sistema de software está sujeito a falhas em momentos aleatórios causados ​​por defeitos presentes no sistema, portanto, considera o número de defeitos por unidade de tempo como variáveis ​​aleatórias de Poisson independentes. Observe que a distribuição de Poisson tem se mostrado um excelente modelo em muitos campos de aplicação onde o interesse está no número de ocorrências. A representação matemática do modelo côncavo é:

<div align='center'>
    <img src='artigos/static/mohamad-mcbride/formula-01.png'>
</div>

e a função de crescimento em forma de S é

<div align='center'>
    <img src='artigos/static/mohamad-mcbride/formula-02.png'>
</div>

- μ(t) - O número esperado de ocorrências de defeitos a qualquer momento, t
- a    - O número total esperado de defeitos a serem observados eventualmente   
- b    - O fator de forma ou taxa de detecção de defeito por defeito

O modelo em forma de S deriva de uma modificação do modelo Goel-Okumoto. A curva em forma de S reflete o período inicial de aprendizado no início, conforme as pessoas de teste se familiarizam com o software, seguido pelo crescimento e então se estabiliza conforme as falhas residuais se tornam mais difíceis de descobrir. Ambos os modelos aplicam o mesmo parâmetro, ou seja, fator de forma. 

Nesta pesquisa, traçaremos os dados de defeitos usando esses dois modelos comuns e examinaremos se há uma diferença na chegada de defeitos entre o software de código aberto e o software de código interno.

## 3. Coleção de Dados

## 3.1. Dados de defeito

Identificamos dois projetos de código aberto notáveis e ativos no SourceForge.net. Iremos nos referir a esses projetos como Open Source A e Open Source B. Esses são dois dos mais bem-sucedidos e amplamente usados entre as comunidades de código aberto em diferentes tópicos ou domínio de aplicativo. Ambos os projetos escolhidos são considerados estáveis, em produção. Coletamos dados de defeitos dos projetos selecionados da ferramenta de rastreamento SourceForge.net. Isso captura todos os atributos de defeito padrão que possuem associações com a data de ocorrência. A Tabela 1 e a Tabela 2 relacionam as informações dos projetos.

<div align='center'>
    <img src='artigos/static/mohamad-mcbride/table-01-02.png'>
</div>

Observe que não analisamos todos os dados de defeitos, mas removemos da consideração defeitos triviais, como defeitos cosméticos ("aparência e comportamento") e defeitos de configuração da plataforma. Também excluímos defeitos duplicados aqueles defeitos inválidos que foram excluídos pelo administrador do projeto de código aberto. Os defeitos recebem uma severidade de 1, a mais baixa, a 9, a mais alta com a maioria classificada como severidade 5. Nosso conjunto de dados incluía apenas defeitos com severidade 4 ou superior para obter um perfil de defeito confiável para o software de código aberto. Como pode ser visto na Tabela 1 e Tabela 2, o número total de defeitos aceitos é inferior ao número total de defeitos relatados.

Os dados de defeitos de um projeto de software desenvolvido internamente usando processos normais de desenvolvimento de software comercial foram coletados de uma organização do setor de telecomunicações. Os defeitos considerados foram apenas aqueles que foram descobertos e relatados pela equipe de desenvolvimento, ao contrário dos defeitos relatados após o lançamento [12]. Os dados de defeito internos são mantidos em um sistema de rastreamento de bugs baseado na web. Novamente, realizamos as mesmas atividades de limpeza de dados para os dados de defeito e um resumo do projeto interno é mostrado na Tabela 3.

<div align='center'>
    <img src='artigos/static/mohamad-mcbride/table-03.png'>
</div>

## 4. Análise e Resultados

Analisamos os conjuntos de dados usando a análise de regressão não linear SPSS em que cada um dos conjuntos de dados é transformado em dois modelos para análise de confiabilidade.

### 4.1. Modelos de crescimento de confiabilidade

Como mencionado anteriormente, os modelos de crescimento côncavo e em forma de S aplicam o mesmo parâmetro, ou seja, fator de forma; e isso explica a disseminação dos dados. Os parâmetros estimados e R ao quadrado estão listados na Tabela 4. Resumidamente, R ao quadrado como uma indicação de quão boa é a correlação entre o número cumulativo de defeitos e o tempo de vida do projeto.

Traçamos os defeitos cumulativos encontrados ao longo da vida do código aberto (Figura 1 e Figura 2) e de projetos internos (Figura 3). As curvas observadas representam os valores reais dos projetos, as curvas previstas correspondem à estimativa das curvas côncavas e em S. Obviamente, os dois conjuntos de dados de código aberto não convergiram para as curvas côncavas e em forma de S. As curvas côncavas e em forma de S previstas erram em quase todos os valores observados.

<div align='center'>
    <img src='artigos/static/mohamad-mcbride/figure-01.png'>
</div>

<div align='center'>
    <img src='artigos/static/mohamad-mcbride/figure-02.png'>
</div>

Curiosamente, a curva de crescimento geral do Open Source A (Figura 1) parece exibir uma curva em forma de S reversa. Ele aparece como uma curva côncava apenas no primeiro período da vida útil calculada do projeto. Um padrão de crescimento diferente pode ser visto para o Open Source B (Figura 2), em que a curva mostra uma forma convexa em vez de côncava. Como esperado, obtivemos um bom modelo de ajuste para o produto interno (Figura 3). As curvas em forma de S e côncavas chegaram muito perto dos dados observados.

<div align='center'>
    <img src='artigos/static/mohamad-mcbride/figure-03.png'>
</div>

Exame desses resultados A Tabela 4 mostra um pouco confusa das indicações dos modelos de confiabilidade. Por exemplo, Open Source A tem um resultado alto R ao quadrado para o modelo côncavo, mas esse não é o caso se olharmos para a curva côncava prevista conforme ilustrado no gráfico (Figura 1). Em geral, ambos os produtos de código aberto não exibiram nenhum dos modelos de crescimento de confiabilidade comuns, portanto, concluímos que o software de código aberto exibe uma taxa de chegada de defeitos diferente para os projetos examinados até agora. Esses achados merecem uma investigação mais aprofundada sobre o que poderia contribuir para essa diferença. Aqui, estendemos nosso trabalho para examinar os tipos de defeito no crescimento geral do defeito.

## 4.2. Classificação do defeito

Os defeitos podem ser classificados por tipo de problema, por exemplo: um tipo de função de defeito afeta a funcionalidade de uma determinada especificação do sistema de software. Muitos estudos têm mostrado o uso de informações de tipo de defeito como um meio importante de avaliar a qualidade relativa de um sistema de software. O padrão IEEE 1044, o esquema de defeitos Hewlett-Packard (HP) e a Classificação de defeitos ortogonais (ODC) estão entre as classificações de defeitos bem conhecidas. Em geral, essas classificações abrangem aproximadamente as mesmas informações de tipo de defeito.

Usamos tipos de defeitos ODC para classificar os conjuntos de dados. ODC demonstrou seu valor em revelar insights sobre qualidade de software e desenvolvimento de software. A Tabela 5 mostra os tipos de defeitos de ODC e suas associações de processo usados neste estudo.

<div align='center'>
    <img src='artigos/static/mohamad-mcbride/table-05.png'>
</div>

Classificamos manualmente os dados e para cada defeito e atribuímos um qualificador ausente ou incorreto. A precisão na classificação de defeitos pode se tornar um problema, embora as classes de defeitos de "ortogonalidade" reduzam a probabilidade de classificação incorreta. Examinar as relações entre o 'tipo' e o 'qualificador' pode revelar fraquezas nas áreas explícitas de desenvolvimento de software, ou seja, a qual fase do processo um defeito está associado, assim, localizar e corrigir o processo, bem como o defeito, pode ser bastante simples.

Para demonstrar o crescimento relativo dos tipos de defeitos, curvas de crescimento separadas podem ser geradas. Colapsamos as classes em suas associações de processo para observar melhor o crescimento do grupo. Isso foi feito dividindo todos os dados de defeitos classificados (tipos) em três categorias: função, interface + serialização + algoritmo e atribuição + verificação. Essas categorias de defeitos são correlacionadas às fases do processo de desenvolvimento de software. Conforme mostrado na Tabela 5, se um defeito de função for encontrado no teste de sistema ou teste de unidade, ele aponta para a fase de design de alto nível à qual o defeito deve ser associado, interface + serialização + algoritmo referem-se a design de baixo nível e atribuição + verificação refere-se à fase de codificação.

## 4.3. Taxa de chegada do tipo de defeito

Para permitir uma comparação direta, apenas os defeitos relatados durante 2007 para o Projeto B de código aberto e o projeto interno foram considerados. São apresentadas as curvas de crescimento para o colapso das categorias Open Source B (Figura 4) e In-house project (Figura 5). O cronograma dos projetos foi dividido em três períodos: período 0, 1 e 2. Os períodos foram arbitrários, escolhidos apenas para melhor observação e análise da evolução dos defeitos e não possuem significado de processo ou evento. Observe que o projeto de código aberto não sofre grandes defeitos de função ou atribuição + verificação e ambas as categorias devem se estabilizar em breve. Os defeitos de interface + serialização + algoritmo estão claramente aumentando muito rapidamente no período 2 e não mostram nenhum sinal de estabilização.

<div align='center'>
    <img src='artigos/static/mohamad-mcbride/figure-04.png'>
</div>

No geral, o projeto de código aberto tem funcionalidade estável, mas o design de baixo nível é instável. Basicamente, uma versão mais recente do software de código-fonte aberto é lançada em alfa e beta, na qual problemas conhecidos foram corrigidos e novos recursos foram adicionados, portanto, o software pode sofrer de problemas de design de baixo nível. Isso está em contraste com o projeto interno (Figura 5), onde todos os tipos de defeitos estão se estabilizando no final do ano.

<div align='center'>
    <img src='artigos/static/mohamad-mcbride/figure-05.png'>
</div>

O trabalho de classificação posterior revela outro recurso de qualidade no produto de código aberto. A maioria dos defeitos relatados para o Projeto B de código aberto foram relatados como incorretos, em vez de ausentes. Isso está em contraste com o projeto interno, onde uma proporção significativa dos defeitos de função e interface foram relatados como ausentes em vez de incorretos.

<div align='center'>
    <img src='artigos/static/mohamad-mcbride/figure-06.png'>
</div>

<div align='center'>
    <img src='artigos/static/mohamad-mcbride/figure-07.png'>
</div>

<div align='center'>
    <img src='artigos/static/mohamad-mcbride/figure-08.png'>
</div>

## 5. Discussão

O padrão diferente na chegada de defeitos do software de código aberto parece ser uma consequência do próprio método de desenvolvimento de software de código aberto. ‘Libere cedo e libere frequentemente’ afeta o crescimento dos defeitos. Os desenvolvedores de código aberto tendem a fazer mudanças abruptas entre os lançamentos subsequentes para atender a novas expectativas, como solicitações de recursos, e aproveitar as vantagens das novas tecnologias. Apesar da rápida evolução, o código aberto não atrai relatórios de defeitos de função e código ausentes, talvez devido à grande participação dos usuários. Isso significa que há menos adesão a uma lista formal de requisitos. Basicamente, todos contribuem com suas próprias habilidades e atendem aos seus próprios requisitos, portanto, a falta de funcionalidade é menos provável em software de código aberto.