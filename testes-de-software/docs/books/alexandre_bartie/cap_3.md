# 3. Definindo Qualidade de software

Qualquer decisão tomada durante o processo de desenvolvimento do software pode comprometer sua qualidade final. Se desejarmos produzir software com alta qualidade, é necessário investir em qualidade em todos os pontos do processo.

## 3.1. Dimensão da Qualidade do software

Softwares mal testados provocam prejuízos enormes às organizações. Um simples erro interno do projeto poderá encadear requisições de compras desnecessárias, solicitar manutenções de equipamentos antes do período ideal, produzir estatísticas falsas de produtividade, distribuir rendimentos de forma desproporcional, entre outros. 

É impossível obter um software de qualidade com processos de desenvolvimento frágeis e deficientes, portanto, não é possível estabelecer um processo de garantia da qualidade que não enfoque simultaneamente o produto tecnológico e o processo de desenvolvimento desse software.

Assim, podemos estabelecer duas dimensões fundamentais para atingirmos a qualidade do software: a dimensão da qualidade do processo e da qualidade do produto.

### 3.1.1. Dimensão da Qualidade do processo

Quando estamos diante do desafio de garantir a qualidade de um software, estamos, na verdade, estabelecendo uma cultura de não-tolerância a erros, ou seja, estamos estruturando processos que possuam mecanismos de inibição e impedimentos de falhas, possibilitando que os diversos artefatos gerados durante o ciclo de desenvolvimento tenham procedimentos que avaliam sua qualidade, possibilitando a identificação prematura de defeitos nesses artefatos.

O termo "artefato" nesse contexto deve ser entendido como todos os requisitos levantados, modelos e especificações de negócio, arquitetura física, modelo de dados e classes, distribuição de componentes, análise de custos, projeções financeiras, ou seja, todos os documentos gerados durante o desenvolvimento do software.

### 3.1.2. Dimensão da Qualidade do produto

Todas atividades que tenham por objetivo "estressar" telas e funcionalidades de um sistema informatizado podem ser caracterizadas na dimensão de garantia da qualidade do produto tecnológico.

Apesar de bastantes empregadas nas organizações, o grau de eficiência dessas atividades é assustadoramente baixos, o que incentiva as empresas a substituírem tais atividades pela correção de problemas. Os principais motivos para essa baixa eficiência é a falta de planejamento das atividades de teste, ausência de testes que validem funcionalidades antigas e ausência de um processo de automação dos testes e conferências.

## 3.2. Medindo a Qualidade através dos Testes

O processo de qualidade de software utiliza-se dos testes em todo o ciclo de desenvolvimento, de forma a garantir tanto o processo de engenharia quanto o produto de software desenvolvido.

### 3.2.1. Testes que Garantem a Qualidade do Processo

A qualidade dos processos pode ser medidas através de testes aplicados em documentos gerados em cada fase do desenvolvimento. Como cada etapa deve produzir um conjunto de documentos, é possível estabelecer a qualidade nas várias fases do ciclo de desenvolvimento através da qualidade dos documentos produzidos. Esses testes são conhecidos como testes de verificação.

### 3.2.2. Testes que Garantem a Qualidade do produto

A qualidade dos produtos de software pode ser garantida através de sistemáticas aplicações de testes nos vários estágios do desenvolvimento da aplicação. Esses testes são conhecidos como testes de validação, isso porque, quando construímos uma unidade de software, validamos sua estrutura interna e sua aderência aos requisitos estabelecidos. Avaliamos sua integração com as demais unidades de software, validando as interfaces de comunicação entre componentes. Quando determinado subsistema ou mesmo a solução está finalizada, validamos a solução tecnológica como um todo, submetendo a testes de todas as catergorias possíveis.

Os testes de software, em sua maioria, podem sofrer um alto nível de automação, o que possibilita a criação de complexos ambientes de testes que simulam diversos cenários de utilização. Quanto mais cenários simulados, maior o nível de validação que obtemos do produto, caracterizando maior nível de qualidade do software desenvolvido.

### 3.2.3. Definição Comum de Testes

De forma geral, todas as equipes de desenvolvimento aplicam testes em seus softwares, sejam eles bem planejados e estruturados ou não. O fato é que esses testes não são suficientes para detectar os erros que estão inseridos dentro de uma aplicação. Um dos motivos básicos para que isso ocorra é a forma como esses profissionais encaram os testes de software. Geralmente, esses profissionais encaram as atividades de teste como a avaliação ou comprovação de que tudo está funcionando adequadamente. Essa visão sobre testes não é adequada pois os desenvolvedores são podem está emocionalmente envolvidos com o software projetado e pode existir o desejo de provar que o resultado do seu esforço funciona, quando o objetivo de desenvolver testes é justamente o contrário, é mostrar o mais cedo possível que algo não está funcionando.

### 3.2.4. A Definição Correta sobre Testes

Entender que o objetivo dos testes é "provar que algo não funciona" é um avanço significativo na compreensão de um processo de qualidade de software. Teste é um processo sistemático e planejado que tem por finalidade única a identificação de erros.

### 3.2.5. Limitações dos Testes

Devemos ter em mente que os testes podem ser usados para mostrar a presença de erros, mas nunca sua ausência. A razão óbvia para essa conclusão é o fato de que um processo de qualidade, por melhor que ele seja, não conseguirá cobrir todas as infinitas combinações existentes em um ambiente de execução real.

A qualidade de um software é definida pelo número de requisitos que foram adequadamente testados e estão em conformidade com o especificado. Obter mais qualidade significa aumentar o grau de cobertura e testar novos requisitos e inserir novos cenários que não estavam sendo considerados. Quanto maior a extensão dos testes, maior será a qualidade do software e menor será os riscos de erros, uma vez que mais cenários foram testados e adequadamente validados.


### 3.2.6. Atitude Zero-defeito

Obter um software com zero defeitos é algo inatingível, devido a complexidade envolvida e pelo número altíssimo de situações existentes. Não podemos nos enganar, sempre existirão erros a serem descobertos, porém, o desafio de um processo de garantia de qualidade é justamente tornar esses riscos o mais próximo possível do zero.

A qualidade de software trabalha com o conceito "zero-defeito", que representa a não-tolerância a erros de dentro de um processo de qualidade de software. O objetivo é definir um processo que contenha mecanismos de inibição de defeitos, impedimento que falhas sejam criadas e propagadas para fases seguintes. Um processo que implementa o conceito "zero-defeito" é desenhado para minimizar a incidência de problemas.

## 3.3. Os Pilares da Qualidade de Software

No PMBOK (Project Management Body of Knowledge), realizado pela PMI (Project Management Institute) o processo de gerenciamento de qualidade é subdividido em três subprocessos complementares:

* **Planejamento da Qualidade**: Todas as atividades referentes ao planejamento das atividades da qualidade e os esforços na prevenção de defeitos.
* **Garantia da Qualidade**: Todas as atividades técnicas e procedimentos realizados com o objetivo de identificar erros em artefatos do software.
* **Controle da Qualidade**: Todas as atividades, técnicas e procedimentos relacionados a medir e monitorar a qualidade do processo e do produto de software.

### 3.3.1. Planejamento da Qualidade

Processo destinado a identificar quais padrões de qualidade são relevantes para o projeto e determinar como satisfazê-los. É realizado em paralelo com outros processos de planjemanto e tem como produto o **Plano de Garantia da Qualidade de Software** (SQA Plan - Software Quality Assurance Plan) e todos os planejamentos mais direcionados (Estratégias de Testes das diversas categorias existentes).

### 3.3.2. Garantia da Qualidade

Processo que engloba a estruturação, sistematização e execução das atividades que terão como objetivos garantir o adequado desempenho de cada etapa do desenvolvimento, satisfazendo os padrões de qualidade definidos no processo. Aqui estarão relacionados os testes de verificação e os testes de validação previstos em todas as etapas do ciclo de desenvolvimento.

### 3.3.3. Controle da qualidade

Processo que se concentra no monitoramento e desempenho dos resultados do projeto para determinar se ele está atendendo aos padrões de qualidade no processo de desenvolvimento. Trata-se de um processo contínuo e sistemático de acompanhamento da eficiência do desenvolvimento em diversos pontos de controle, possibilitando às gerências e profissionais envolvidos acompanhar variações de qualidade e promover ações corretivas e preventivas para manter o nível de qualidade desejado. Avaliará sistematicamente a qualidade do processo em execução e a qualidade do produto tecnológico que está sendo desenvolvido.

## 3.4. Onde Devemos Aplicar Qualidade?

Um dos erros mais comuns sobre qualidade é acreditar que "Testes de Software" se trata de uma etapa de período fixo no ciclo de desenvolvimento de software, geralmente posicionada após a etapa de implementação.

<div align="center">
  <img src="books/alexandre_bartie/imgs/img-3.1.png" >
</div>

Essa visão sobre "Testes de Software" se opõe ao princípio de identificar os erros nas fases iniciais do processo de desenvolvimento, o esforço para obter a qualidade, e consequentemente a identificação de erros está ocorrendo uma fase tardia do ciclo de desenvolvimento.

Isso significa que devemos garantir a qualidade de todas as etapas do processo de desenvolvimento, de forma a garantir que não iniciaremos uma nova fase caso esta ainda não tenha sido bem finalizada e entendida. Em outra palavras, devemos garantir a concepção do sistema desejado antes de analisarmos os requisitos de negócios, devemos garantir a análise dos requisitos antes de iniciarmos o processo de arquitetura do software, devemos garantir a modelagem do software antes de codificarmos o produto, devemos garantir o código antes de executá-lo. Dessa forma, estamos aplicando a concepção de garantia da qualidade dentro do processo de engenharia de software como um todo.

### 3.4.1. Onde Estão os Defeitos?

Existe uma visão comum de entender que os defeitos somente são provenientes do código-fonte do produto. Também se entende que somente os profissionais de desenvolvimento, qualidade e testes são os responsáveis por um software sem defeitos. Em ambas as afirmações, estão cometendo um grave erro: primeiro, os erros são gerados durante todo o processo de engenharia do software - são os resultados de traduções imperfeitas de requisitos e especificações que provocam a maior parte dos problemas. 

### 3.4.2. Qualidade em Todo o Ciclo de Desenvolvimento 

Se os erros estão concentrados nas fases iniciais do ciclo de desenvolvimento, devemos investir mais tempo nas atividades de especificações e modelagem da solução. Isso faria com que muitos dos erros fossem eliminados em função de um levantamento mais criterioso e bem estruturado, porém, a redução dos erros somente ocorrerá se em todas as etapas do processo de desenvolvimento existir procedimentos que avaliem a qualidade do que foi produzido. Dessa forma, cada etapa teria seus produtos adequadamente avaliados e vistoriados, atestando a qualidade destes e impedindo que uma nova fase seja iniciada sem que tenha sido concluída adequadamente.

Ter um processo de garantia da qualidade em todo o ciclo de desenvolvimento do software permite que um número maior de defeitos sejam descobertos antecipadamente, evitando a migração destes para as fases seguintes. Isso fará com que os custos referentes às não-conformidades caiam drasticamente, tornando o processo mais estável e menos caótico. Também fará com que os prazos para implantação do software sejam reduzidos em função do menor índice de retrabalhos, refletindo em um aumento na satisfação do cliente (produto mais confiável), uma equipe mais motivada (menos retrabalho e atividades mais construtivas) e uma empresa mais fortalecida (clientes querem trabalhar com empresas que honram prazos e compromissos).

<div align="center">
  <img src="books/alexandre_bartie/imgs/img-3.2.png" >
</div>

Dessa forma, a resposta à pergunta _Onde devemos aplicar Qualidade?_ torna-se simples. Devemos aplicar qualidade em todo o ciclo de desenvolvimento. A cultura da qualidade cria um ambiente favorável para prevenção e detecção de erros, transformando o processo de desenvolvimento em uma atividade com etapas monitoradas e constantemente avaliadas, tornando o processo confiável.

## 3.5. O Custo da Qualidade de Softwares

O custo da qualidade de pode ser entendido como todo o investimento realizado com a finalidade de um produto ou serviço atingir a qualidade desejada. Esses investimentos estão relacionados aos esforços para corrigir não conformidades e aos custos de manutenção dos produtos e serviços produzidos.

### 3.5.1. Custos da Conformidade

Os custos da conformidade são todos os investimentos realizados para planejar e manter toda uma infra-estrutura de pessoas, processos e ferramentas cujo objetivo é prevevir e detectar erros do processo. Algum dos processos associados aos custos da conformidade são:
* Planejamento dos trabalhos
* Treinamentos (processos, técnicas e ferramentas)
* Controles do processo de desenvolvimento
* Testes (estáticos e dinâmicos)
* Revisões de documentos
* Auditorias de procesos

### 3.5.2. Custos da Não-conformidade

Os custos de não-conformidade são todos os custos de atividades ligadas ao esforço de reparar falhas de produtos originados no decorrer do processo de desenvolvimento. Todas as consequências financeiras causadas por esses defeitos devem ser computadas nos custos da não não-conformidade. Tudo que é realizado ou gerado em função de defeitos produzidos durante os projetos de software deve ser encarado como não conformidade, ou seja, os custos provenientes da falta de qualidade. Algum dos processos associados ao custos da não-conformidade são:
* Refugos
* Retrabalhos
* Ações corretivas
* Atrasos no cronograma
* Perdas financerias e operacionais
* Perdas de oportunidades

## 3.6. Um Modelo de Custo de Qualidade de Software

Um dos maiores desafios é estabelecer um modelo de custos relacionados à implantação de um processo de garantia da qualidade do software. Para um efetivo controle dos custos necessitamos visualizar não somente os custos da não-conformidade, mas os custos relacionados à obtenção da qualidade. Os custos da conformidade pode ser separados em duas categorias: os custos da detecção dos defeitos, relacionados a todas as atividades que visam garantir e detectar problemas nos diversos produtos (documentos, relatórios, softwares) gerados durante o ciclo de desenvolvimento, e os custos de prevenção dos defeitos, relacionados a todas as atividades que tenham por objetivo reduzir o nível de falhas das diversas etapas do desenvolvimento.

Em todos os projetos a serem construídos ou modificados, todas as atividades deveriam ter uma política de alocação de custos semelhantes ao modelo apresentado. Será uma grande surpresas aos proprietários, gerentes, profissionais e clientes perceberem quanto representa percentualmente os custos de não-conformidade de um processo de desenvolvimento.

<div align="center">
  <img src="books/alexandre_bartie/imgs/img-3.3.png" >
</div>

## 3.7. O Custo da Propagação dos Defeitos

Todo e qualquer tipo de erro custa dinheiro. Não estamos só falando da alocação de tempo e recursos para produzir algo defeituoso, mas também nos danos provocados pelo erro, bem como sua identificação, correção, teste e implantação da correção, porém, segundo estudos de Myers, quanto mais tardiamente descobrimos os erros, mais caros estes se tornam. Devemos entender que testar nas fases iniciais sai mais barato do que nas fases mais tardias do processo de desenvolvimento.

## 3.8. A Relação Custos vs Qualidade

Em um mundo sem restrições, a decisão de implementar um processo completo de qualidade em todo o ciclo de desenvolvimento não seria um problema.Porém, aplicar esses conceitos envolve grande montante de dinheiro, recursos profissionais e tempo, e nem sempre teremos condições para fazê-los. No mundo real, bons profissionais conseguem direcionar seus esforços e contornar as restrições que lhes são impostas. Isso significa priorizar as atividades importantes e dar maior ênfase aos softwares e etapas mais críticas e problemáticas. Dessa forma, poderemos minimizar os riscos envolvidos na atividade de desenvolvimento de um software e implantar um efetivo processo de garantia de qualidade.

Outros aspectos estão também relacionados à maturidade organizacional do cliente, ou seja, se esse ainda não possui um processo estruturado de desenvolvimento de software, com certeza não será possível estabelecer um processo de qualidade completo. A falta de documentos básicos inviabilizam esse processo, pois o desenvolvimento é tão informaç que não haverá documentações e especificações a serem inspecionadas.

<div align="center">
  <img src="books/alexandre_bartie/imgs/img-3.4.png" >
</div>

* **Auditoria**: Nível superficial de um processo de qualidade. Verifica se as atividades e documentos estão respeitando as estruturas e padrões estabelecidos. Trata-se de uma análise do esqueleto do processo. Não é avaliada a qualidade dos documentos gerados nem do software desenvolvido pela equipe.
* **Produto Acabado**: Nível mais praticado nas organizações. O processo de qualidade somente é iniciado após o software ter sido transformado em produto tecnológico. São aplicados todos os testes possíveis no produto acabado.
* **Parcial**: Nível intermediário de qualidade. O processo de teste inicia-se juntamente com o processo de estruturação interna do software e o acompanha ao longo de seu ciclo de desenvolvimento. Os testes são orientados por requerimentos e especificações funcionais.
* **Completo**: Trata-se de um efetivo processo de garantia da qualidade do software. O processo inicia-se conjuntamente com o levantamento de requisitos do software. Todas as etapas são completadas segundo um critério de finalização previamente estabelecido, os documentos são todos analisados e revisados pela equipe de qualidade de software e todas as categorias de testes são aplicadas no software desenvolvido.