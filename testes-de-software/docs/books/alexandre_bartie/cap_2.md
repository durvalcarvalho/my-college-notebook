# 2. Adquirindo Maturidade Organizacional

Um dos objetivos de se implantar um processo de qualidade de software é estabeler um processo que garanta o nível de qualidade do produto e do processo de desenvolvimento.

Software "não adequados" são sintomas da falta de controle do processo de desenvolvimento.

Um dos mais importantes trabalhos de avaliação da maturidade organizacional de uma empresa de software foi produzido pelo _Software Engineer Institute (SEI)_, um centro de desenvolvimento e pesquisa patrocinado pelo Departamento de Defesa dos Estados Unidos. Sua missão foi produzir um trabalho que possibilitasse às organizações aperfeiçoar a qualidade final de seus produtos finais, empregando o "estado da arte" no desenvolvimento de software.

O resultado desse trabalho foi o modelo **_Capability Maturity Model (CMM)_**, que tem como foco o processo de software na proposta de melhoria contínua, trazendo disciplina e controle no desenvolvimento e manutenção do software.

## 2.1. Modelo CMM

O CMM é definido pela SEI descreve uma estrutura de trabalho que possui todos os elementos necessários para tornar um processo de desenvolvimento de software mais eficiente e controlado. O CMM baseia-se em um modelo evolutivo de maturidade, no qual as organizações partem de uma total falta de controle e gerenciamento dos processos (a imaturidade organizacional) para gradativamente adquirir novas competências, incrementando seu nível de eficiência e maturidade em relação aos diversos processos críticos envolvidos em um desenvolvimento de software.

O modelo de processo CMM, baseia-se em cinco níveis de maturidade organizacional. Cada nível representa um estágio de maturidade dentro do processo de desenvolvimento de software. Cada organização tem seu nível individual de maturidade, refletindo seu grau de controle sobre o processo como um todo.

<div align="center">
  <img src="books/alexandre_bartie/imgs/cmm.png" >
</div>

Nenhuma organização consegue sair do nível 1 e chegar ao nível 3 sem antes passar pelo nível 2. Cada nível é um pré-requisito para o outro e cada organização consegue excergar somente o que sua maturidade permite. Apesar disso, as organizações podem usar de maneira vantajosas processos descritos em níveis de maturidade superiores aos que se encontram. 


Mudar o nível não é uma atividade simples; requer uma ruptura nos padrões culturais da organização. Quebrar velhos hábitos e rever processos de trabalho exige muito treinamento, envolvimento e dedicação, além de consumir tempo e dinheiro, ou seja, é um processo de muito suor e trabalho.

Mais de 85% das organizações ainda estão no nível 1, ou seja, está produzindo software de forma desordenada e sem controles. À medida que o tempo vai passando, se essas empresas não evoluírem em sua forma de pensar e agir, estarão condenadas a desaparecer.

## 2.2. Áreas-chave do Processo (KPAs - Key process areas)

As áreas-chave do processo constituem a primeira divisão sistemática dentro dos níveis de maturidade de uma organização. Esses grupos de atividades, quando execututadas em conjunto, satisfazem um conjunto de metas relevantes para a melhoria da capacitação do processo. O CMM considera cada área-chave um processo particular.

Os níveis de maturidade descrevem os problemas mais predominantes daquele nível. Uma organização migra de um nível a outro sempre que consegue operacionalizar todas as áreas-chave específicas de um nível.

### 2.2.1. CMM-Nível 2

No nível de maturidade definido como Repetitível, as políticas de gerenciamento do software e os procedimentos detalhados para sua implementação estão estabilizados. O planejamento e o gerenciamento dos novos projetos são baseados na experiência adquirida em projetos similares anteriormente executados. 

Um dos objetivos a serem alcançados no CMM-Nível 2 é tornar os processos de gerenciamento de software corporativos, o que permitirá à organização repetir sistematicamente as melhores práticas internas estabelecidas pelas várias experiências adquiridas em projetos anteriores. 

Um efetivo processo de gerenciamento de software deve ser praticado, documentado, garantido, treinado, medido e constantemente melhorado.

<div align="center">
  <img src="books/alexandre_bartie/imgs/KPAs.png">
</div>

Projetos em organizações com CMM-Nível 2 têm controles básicos de gerenciamento de software. As estimativas de tempo, recursos e custos do software são baseadas nos históricos dos projetos anteriores e projetadas através dos requisitos estabelecidos no projeto atual. Os gerentes de software possuem um controle de rastreabilidade em relação aos custos, cronogramas, funcionalidades e defeitos. Os problemas são identificados na mesma etapa que são gerados, evitando a propagação de erros para fases posteriores.

Os requisitos de software e todos os produtos gerados durante o desenvolvimento são sistematicamente monitorados, possibilitando a evolução do tamanho e complexidade destes. Os padrões de desenvolvimento do software são definidos e a organização garante que estão sendo sistematicamente seguidos.

O processo de software de uma organização CMM-Nível 2 pode ser entendido como um processo disciplinado, pois as políticas de planejamento e rastreamento do projeto de software estão estáveis e as práticas de sucesso aplicadas a determinados projetos, podem ser convenientemente repetidas corporativamente. O processo de de software está sob o controle de um consolidado modelo de gerenciamento de projeto regido por planos objetivos e realistas, estimados a partir de experiências de projeto anteriores.

As KPAs do Nível 2 são:
* Gerenciamento de requisitos
* Planejamento de projetos de software
* Supervisão e rastreamento do projeto de software
* Gerenciamento de subcontratação de software
* Garantia da qualidade de software
* Gerenciamento de configuração de software

### 2.2.2. CMM-Nível 3

No nível de maturidade classificado como Definido, os diversos processos padronizados de desenvolvimento de software estão adequadamente documentados. Os processos de gerenciamento do software estão convenientemente integrados aos processos de engenharia de software, tornando o modelo de processo único e integrado às diversas áreas organizacionais. Os processos estabelecidos em organizações CMM-Nível 3 são usados e ajustados para auxiliar os gerentes e profissionais de software a ganharem mais produtividade.

A organização busca as melhores práticas de engenharia de software quando padronizam seus processos de software. Há um grupo responsável por estabelecer e documentar as atividades do processo de software denominado SEPG (_Software Engineering Process Group_). Um amplo programa de treinamento corporativo deverá ser implementado para desenvolver gerentes e profissionais e capacitá-los a desempenhar melhor suas funções, empregando uma política contínua de transferência do conhecimento e adequado desenvolvimento e aprimoramento de habilidades.

As organizações CMM-Nível 3 conseguem gerenciar processos dinâmicos de desenvolvimento de software. A partir de um processo padrão de desenvolvimento, essas organizações podem acrescentar, modificar ou eliminar atividades, dependendo das características e riscos envolvidos no projeto, possibilitando a criação de um processo de desenvolvimento "customizado" a cada situação. 

Um processo bem definido inclui pré-requisitos para início das fases do projeto, artefatos obrigatórios e opcionais, padrões de referência, procedimentos de execução dos trabalhos, mecanismos de verificação de documentos, artefatos de saída e critérios de finalização das etapas. Nesse nível, é possível visualizar claramente como cada projeto em execução está evoluindo.

O processo de software de uma organização CMM-Nível 3 pode ser entendido como padronizado e consistente porque ambas as atividades de engenharia e desenvolvimento estão estáveis e replicáveis. Todos os aspectos relativos a um produto de software como custos, atividades e funcionalidades estão sob controle e a qualidade do software é medida e registrada. Existe uma visão corporativa do processo de desenvolvimento, um entendimento claro sobre as atividades e responsabilidades estabelecidas nesse processo de software.

As KPAs do Nível 3 são:
* Gerência integrada de software
* Coordenação do processo da organização
* Definição do processo da organização
* Foco no processo da organização
* Programa de treinamento
* Engenharia de produto de software
* Revisões pelos pares

## 2.3. Impacto da Maturidade no Processo de Qualidade

Um dado importante que o SEI estima é que de acordo com o nível que a empresa se emcontra o esforço para corrgiri defeitos do projeto pode varia entre 55 a 5%.

A medida que a empresa vai adquirindo maturidade, esses índices vão sendo gradativamente reduzindo de 55%, 35%, 20%, 10% até a empresa alcançar o nível 5 e reduzir esse patamar para 5%.

<div align="center">
  <img src="books/alexandre_bartie/imgs/esforco.png" >
</div>

O esforço para promover um processo de qualidade de software é muito maior para empresas que possuem pouca maturidade organizacional. Isso pois essas organizações estão pouco preparadas para realizar atividades desse porte - não possuem processos bem estruturados, não há documentações adequadas e padronizadas; ainda não compreenderam completamente os benefícios dos processos de qualidade de software e testes a serem aplicados em todos os ciclos do desenvolvimento; a maioria das pessoas acredita que os problemas do desenvolvimento são meramente tecnológicos, não necessitando de revisões dos processos e mudanças na cultura da empresa; não existe participação efetiva dos clientes e usuários nos processos de desenvolvimento, aumentando os riscos de o produto não atender às reais necessidades; a maior parte da organização é resistente à inovação do processo de desenvolvimento, pois acredita que o aperfeiçoamento é uma atividade impraticável.