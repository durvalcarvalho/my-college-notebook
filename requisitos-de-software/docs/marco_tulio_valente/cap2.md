# Capítulo 2

# Processos

> "In software development, perfect is a verb, not an adjective. There is no perfect process. There is no perfect design. The are no perfect stories. You can, however, perfect your process, your design, and your stories" <br>
> -- <cite>Kent Beck</cite>

## Importância de Processos

Um processo de desenvolvimento de software defini um conjunto de passos, tarefas, eventos e práticas que devem ser seguidos por desenvolvedores de software, na produção de um sistema.

Os sistemas atuais são por demais complexos para serem desenvolvidos por uma única pessoa. Por isso, casos de sistemas desenvolvidos por heróis serão cada vez mais raros. Na prática, os sistemas modernos são desenvolvidos em equipes.

E essas equipes, para produzir software com qualidade e produtividade, precisam de um ordenamento, mesmo que mínimmo. Por isso, empresas dão tanto valor a processos de software. Eles são o instrumento de que as empresas dispõem para coordenar, motivar, organizar e avaliar o trabalho de seus desenvolvedores, de forma a garantir que eles trabalhem com produtividade e produzam sistemas alinhados com os objetivos da organização. Sem um processo existe o risco de que os times de desenvolvimento passem a trabalhar de forma descoordenada, gerando produtos sem valor para o negócio da empresa. 

Por fim, processos são importantes não apenas para empresas, mas também para os desenvolvedores, pois permitem que eles tomem consciência das tarefas e resultados que se esperam deles. Sem um processo, os desenvolvedores podem se sentir perdidos, trabalhando de forma errática e sem alinhamento com os demais membros do time de desenvolvimento.

## Manifesto Ágil

- **Indivíduos e interações**, mais do que processos e ferramentas
- **Software em funcionamento**, maos do que documentação abrangente
- **Colaboração com o cliente**, mais do que negociação de contratos
- **Respostas a mudanças**, mais do que seguir um plano
- **Ciclos curtos e iterativos de desenvolvimento**
- **Menor ênfase em documentação**, apenas o essencial deve ser documentado
- **Menor ênfase em planos detalhados**, pois muitas vezes nem o cliente, nem os Engenheiros têm, no início de um projeto, uma ideia clara dos requisitos.
- **Inexistência de uma fase dedicada a design**. O design evolui à medida que o sistema vai nascendo, ao final de cada iteração.
- **Desenvolvimento em times pequenos**. (Times que podem ser alimentados por 2 pizzas)
- **Programação em pares**
- **Testes automatizados**
- **Integração contínua**

As características acima são genéricas e abrangentes, por isso alguns métodos foram propostos para ajudar desenvolvedores a adotar os princípios ágeis, de forma mais concreta, como:
- Extreme Programming (XP)
- Scrum
- Kanban

## Definição de termos

### Processo

Processo é o conjunto de passos, etapas e tarefas que se usa para construir um software. Toda organização usa um processo para desenvolver seus sistemas, o qual pode ser ágil ou waterfall. Ou, talvez, esse processos pode ser caótico. O ponto que precisa ser reforçado é que sempre existe um processo.

### Método

Método define e especifica um determinado processo de desenvolvimento. Assim, XP, Scrum e Kanban são métodos ágeis ou, de forma mais extenso, são métodos que definem práticas, atividades, eventos e técnicas compatíveis com princípios ágeis de desenvolvimento de software.

## Extreme Programming (XP)

Segundo seu autor, XP é um método leve recomendado para desenvolver software com requisitos vagos ou subjetivos a mudanças. Desse modo, XP não é um método prescritivo, que define um passo a passo detalhado para construção de software. Em vez disso, XP é definido por meio de um conjunto de **valores**, **princípios** e **práticas de desenvolvimento**. 

Ou seja, XP é inicialmente definido de forma abstrata, usando-se de valores e princípios que devem fazer parte da cultura e dos hábitos de times de desenvolvimento de software. Depois, esses valores e princípios são concretizados em uma lista de práticas de desenvolvimento.

- **Valores**: comunicação, simplicidade, feedback, coragem, respeito e qualidade de vida.
- **Princípios**: humanidade, economicidade, benefícios mútuos, melhorias contínuas, falhas acontecem, baby steps e responsabilidade pessoal.

**Práticas de desenvolvimento:**

- **Práticas sobre o Processo de desenvolvimento**: representante dos clientes (Product Owner), histórias dos usuários, iterações, releases, planejamento de releases, planejamento de iterações, planning poker, folgas (_slack_).
- **Prática de Programação**: design incremental, programação pareada, desenvolvimento dirigido por testes (TDD), build automatizado, integração contínua.
- **Prática de Gerenciamento de Projetos**: métricas, ambiente de trabalho, contratos com escopo aberto.

### Valores

XP defende que o desenvolvimento de projetos de software seja norteado por trẽs valores principais: comunicação, simplicidade e feedback. Uma boa **comunicação** é importante em qualquer projeto, não apenas para evitar, mas também para aprender com erros. O segundo valor é a **simplicidade**, pois em todo sistema complexo e desafiador existem sistemas ou subsistemas mais simples, que às vezes não são considerados. Por último, existem riscos em todos os projetos de software: os requisitos mudam, a tecnologia muda, a equipe de desenvolvimento muda, o mundo muda, etc. Um valor que ajuda a controlar tais riscos é estar aberto ao **feedback** dos stakeholders, a fim de que correções de rota seja implementadas o quanto antes.

> "Planejse-se para jogar fora partes de seu sistema, pois você fará isso"
> -- <cite>Frederick Brooks</cite>

### Princípios

XP defende que projetos de software devem seguir um conjunto de princípios. Alguns dos principais princípios de XP são os seguintes:

- **Humanidade** (_peopleware_): Software é uma atividade intensiva no uso de capital humano. O principal recurso de uma empresa de software não são seus bens físicos, mas sim seus colaboradores. A ideia é que a gestão de pessoas é um princípio chave para o sucesso de projetos de software.
- **Economicidade** (_economics_): Se por um lado, _peopleware_ é fundamental, por outro lado software é uma atividade cara, que demanda a alocação de recursos financeiros consideráveis. Logo, tem-se que ter consciência de que o outro lado, isto é, quem está pagando as contas do projeto, espera resultados econômicos e financeiros. Por isso, na grande maioria dos casos, software não pode ser desenvolvido apenas para satisfazer a vaidade intelectual de seus desenvolvedores. **Software não é uma obra de arte**, mas algo que tem que gerar resultados econômicos.
- **Benefícios Mútuos**: XP defende que as decisões tomadas em um projeto de software têm que beneficiar múltiplos stakeholders. Por exemplo, o contratante deve garantir um bom ambiente de trabalho, em contrapartida, a equipe deve entregar um sistema que agregue valor ao seu negócio.
- **Melhorias contínuas**: Uma vez que nenhum processo de desenvolvimento é perfeito, é mais seguro trabalhar com um sistema que vai sendo continuamente aprimorado, a cada interação, com feedback dos clientes e todos os membros do time. Pelo mesmo motivo, XP não recomenda investir um grande montante de tempo em um design inicial e completo. As melhorias contínuas se aplicam tanto para o sistema, quanto para o processo utilizado.
- **Falhas Acontecem**: Desenvolvimento de software não é uma atividade livre de riscos. Falhas são esperadas em projetos de desenvolvimento de software. Evidentemente, XP não advoga que falhas sejam acobertadas, ao contrário, elas devem ser expostas o mais rápido possível. O que XP quer dizer com esse princípio é que o processo utilizado não deve punir membros de um time ao encontrar falhas
- **Baby Steps**: É melhor um processo seguro, testado e validado, mesmo que pequeno, do que grandes implementações com riscos de serem descartadas pelos usuários. O mesmo vale para testes (é melhor testar pequenos trechos de código do que o sistema inteiro), para integração de código (é melhor integrar diariamente, do que passar pelo stress de fazer uma grande integração), para refatoração (é melhor realizar pequenas mudanças na arquitetura do software sem introduzir erros de difícil rastreamento, do que passar horas procurando a origem de um bug introduzido após uma grande refatoração).
- **Responsabilidade Pessoal**: De acordo com esse princípio, desenvolvedores devem ter uma ideia clara de seu papel e responsabilidade na equipe. O motivo é que responsabilidade não pode ser transferida, sem que a outra parte a aceite. Por isso, XP defende que o engenheiro de software que implementa uma história, deve ser também aquele que vai testá-la e mantê-la.

### Práticas sobre o Processo de Desenvolvimento

XP, como outros métodos ágeis, recomenda o envolvimento dos clientes como o projeto. Ou seja, além dos desenvolvedores, os times devem incluir pelo menos um **representante dos clientes**, que deve entender do domínio do sistema que será construído. Um das funções desse representante é escrever as **histórias de usuário** (user stories), que é o nome que XP dá para os documentos que descrevem os requisitos do sistema a ser implementado.

Depois que as histórias de usuário são escritas, os desenvolvedores irão estimar o esfoço necessário para realizá-la. Essa estimativa é feita com base na métrica "story points" que não tem relação com outras métricas (homem/hora, tempo necessário, etc.). O objetivo é definir uma ordem relativa entre as histórias. Desse modo sendo possível definir quais são as histórias mais simples e quais são as mais complexas.

- **Aprofundamento**: Uma técnicas usada para estimar o tamanho de histórias é conhecida mo **Planning Poker**.

A implementação das histórias ocorrem em **iterações**, as quais têm uma duração fixa e bem definida, variando de uma a três semanas. As interações, por sua vez, formam ciclos mais longos, chamados de **releases**, de dois a três meses, por exemplo. A **velocidade** de um time é o número de **story points** que ele consegue implementar em uma iteração. Sugere-se que o representante escreva histórias que requeiram pelo menos uma release para serem implementadas. Ou seja, em XP, o horizonte de planejamento é uma release, isto é, alguns meses.

Em resumo, para começarmos usar XP precisamos de:
- Definir a duração de uma iteração
- Definir o número de iterações de uma release
- Um conjunto de histórias, escritas pelo representante dos clientes
- Estimativas para cada história, feitas pelos desenvolvedores.
- Calcular a velocidade do time, preferencialmente com base no histórico de story points feitos.

A tarefa de alocar histórias a iterações e releases é chamada de planejamento de releases.

**Pontos importantes**
- As histórias em XP representam funcionalidades do sistema que se pretende construir.
- Os desenvolvedores não opinam sobre a ordem de implementação das histórias, isso é decidido pelo representante dos clientes.


Uma vez realizado o planejamento de uma release, começam as iterações. Antes de mais nada, o time precisa se reunir para realizar o **planejamento da iteração**. O objetivo desse planejamento é decompor as histórias de uma iteração em tarefas, as quais devem corresponder a atividades de programação que possam ser alocadas para um desenvolvedor.

Resumindo, um projeto XP é organizado em:

- Releases, que são um conjunto de iterações, com duração total de alguns meses.
- Iterações, que são conjunto de tarefas, com duração total de algumas semanas.
- Tarefas, com duração de alguns dias.

Uma iteração termina quando todas as suas histórias estiverem implementadas e validadas pelos representantes dos clientes. Assim, ao fim de uma iteração, as histórias devem ser mostradas para o representante dos clientes, que deve concordar que elas, de fato, atendem ao que ele especificou.

XP defende ainda que os times, durante uma iteração, programem algumas folgas (slacks), que são tarefas que podem ser adiadas, caso necessário. Como exemplos, podemos citar o estudo de uma nova tecnologia, a realização de um curso online, preparar um documento ou manual, ou até mesmo desenvolver um projeto paralelo. No caso do XP, folgas têm dois objetivos: 
- 1. Criar um "_buffer_ de segurança" em uma iteração, que possa ser usado caso alguma tarefa demande mais tempo do que o previsto.
- 2. Permitir que os desenvolvedores respirem um pouco, pois o ritmo de trabalho em projetos de desenvolvimento de software costuma ser intenso e desgastante.

### Prática de Programação

XP é um método que dá grande importância à tarefas de programação e produção de código. O XP não só acabou com a grande fase de projeto e análise, como também propôs um novo conjunto de práticas de programação, incluindo programação em pares, testes automatizado, desenvolvimento dirigido por testes (TDD), builds automatizado, integração contínua, etc. A maioria dessas práticas passou a ser largamente adotada pela indústria de software e hoje são praticamente obrigratórias na maioria dos projetos, mesmo naquelas que não usam um método ágil.

#### Design Incremental

No XP não há uma fase de design e análise exaustiva, conhecida como _Big Design Up Front_ (BDUF). A ideia é que o time deve reservar tempo para definir o design do sistema que está sendo desenvolvido. Porém, essa atividade deve ser contínua e incremental, realizada sempre no início de uma atividade de codificação.

XP defende que o momento ideal para pensar em _design_ (pattern) é quando ele se revelar importante.

Vale lembrar que essa abordagem de design incremental depende das demais práticas do XP, principalmente do **refactoring**.

#### Programação em Pares

Toda tarefa de codificação (implementação de histórias, testes, correções de bug, etc.) deve ser realizada por dois desenvolvedores trabalhando juntos, compartilhando o mesmo teclado e monitor. Um desenvolvedor é o **piloto** (driver) da sessão, ficando com o teclado e o mouse, enquanto que o segundo é **co-piloto**. O co-piloto irá ser o revisor e questionador do trabalho do líder.

Com essa abordagem, espera-se melhorar a qualidade do código e do design, pois "duas cabeças pensam melhor do que uma". Além disso, programação em pares contribui para disseminar o conhecimento sobre o código, que não fica nas mãos e na cabeça de apenas um desenvolvedor. Outra vantagem dessa abordagem é que essa maneira de trabalhar é uma espécie de treinamento para novos desenvolvedores (ou desenvolvedores menos experiêntes) em que será apresentado tanto conteúdo técnico (estrutra de dados usadas, algoritmos, design pattern, tipos de testes) quanto regras de negócio que ele precisa saber.

No XP é sugerido que os pares troquem de posições (piloto, co-piloto) de tempos em tempos.

#### Revisão de código

A ideia é que todo código produzido por um desenvolvedor tem que ser revisado e comentado por um outro desenvolvedor, porém de forma offline e assíncrona.

#### Propriedade Coletiva do Código

A ideia é que qualquer desenvolvedor possa modificar qualquer parte do código, seja para implementar uma nova funcionalidade, para corrigir um bug ou para aplicar uma refatoração. Por exemplo, se você descobriu um bug em alguma ponto do código, vá em frente e corrija-o. Para isso, você não precisa de autorização de quem implementou esse código ou de quem realizou a última manutenção nele.

#### Testes automatizados

A ideia é que testes manuais (uma ser humano executando os scripts de teste) é um procedimento custoso e que não pode ser reproduzido a todo momento. Logo, XP propõe o uso de programas para executar esses scripts nas pequenas unidades do sistemas, e verificar se as saídas produzidas condizem com as esperadas. 

#### Desenvolvimento Dirigido por Testes (TDD)

Essa é outra prática de programação inovadora proposta pelo XP. A ideia é simples: se no XP todo método deve possuir testes, por que não escrevê-los primeiro? Isso é, implementa-se o teste de um método e, só então, o seu código. TDD possui duas motivações principais:
- 1. Evitar que a escrita de testes seja sempre deixada para amanhã, pois eles precisam ser feitos antes da feature em si.
- 2. Ao escrever um teste, o desenvolvedor se coloca no papel do cliente do método testado, isso é, ele primeiro pensa na sua interface, em como os clientes devem usá-lo, para então pensar na implementação, com isso, incentiva-se a criação de métodos mais amigáveis, do ponto de vista da interface provida para os clientes.


#### Builds Automatizados

Build é o nome que se dá para a geração de uma versão de um sistema que seja executável e que possa ser colocada em produção. Logo, inclui não apenas a compilação do código, mas a execução de outras ferramentas como linkers, empacotadores, transpiladores, etc. No caso do XP, a execução dos testes é outra etapa fundamental do processo de build. Para automatizar esse processo, são usadas ferramentas, como o sistema Make, CMake, Ant, Mave, Rake, MSBuild, etc.

XP defende que esse processo de build seja automatizado, sem nenhuma intervenção dos desenvolvedores. O objetivo é liberá-los das tarefas de rodar scripts, informar parâmetros de linhas de comando, configurar ferramentas, etc. Assim eles podem focar no que realmente trás mais valor ao cliente, a implementação das histórias.

Outro fator é que uma vez que o processo de build esteja automatizado, os desenvolvedores irão receber rapidamente feedback sobre possíveis problemas introduzidos na base de código, como erros de compilação, introdução de dependências circulares, etc.


#### Integração Contínua

Sistemas de software modernos são desenvolvidos com o apoio de sistemas de controle de versões (VCS), que armazenam o código fonte do sistema e de arquivos relacionados, como arquivos de configuração, documentação, etc. 

Quando equipes desenvolve software, é comum que a mesma parte do código seja modificada paralelamente nos computadores locais de cada desenvolvedor. Assim, quando é realizado a entrega da história do usuário, e é necessário integrar o novo código com a base de código original ocorre um conflito, pois para uma mesma parte do sistema está sendo sugerido colocar duas informações diferentes. Para resolver esses conflitos é necessário manualmente, como irá ficar o trecho compartilhado modificado. Em grandes modificações, essa integração pode ser complexa e ocasionar na introdução de bugs.

Com esse problema em mente, o XP sugere que toda modificações seja rapidamente integrada na base de código, pois é mais fácil solucionar pequenos conflitos do que solucionar um conflito de integração de duas grandes entregas.

Para dar suporte a atividade de integração contínua, existem **serviços de integração contínua** (CI) que faz o build do código e executa os testes. O objetivo é garantir que o código não seja integrado enquanto apresentar erros. Os serviços de CI mais conhecidos são: Jenkins, TravisCI, CircleCI, etc.

### Práticas de Gerenciamento de Projeto

#### Ambiente de Trabalho

Em relação ao **ambiente de trabalho**, o XP defende que o projeto seja desenvolvido por equipes pequenas, com até 10 desenvolvedores. Todos eles devem estar dedicados ao projeto, isso é, deve-se evitar times fracionados, nos quais alguns desenvolvedores trabalham apenas alguns dias da semana no projeto e os outros dias em um outro projeto.

O XP também defende que todos os desenvolvedores trabalhem na mesma sala, para facilitar a comunicação e feedback. Nessa sala, o ambiente deve ser usado interativamente, com presença de quadros com histórias de usuários, e outras informações pertinentes.

Outra preocupação do XP é garantir jornadas de trabalho sustentáveis. Empresas de software são conhecidas por exigirem longas jornadas de trabalho, com diversas horas extras e trabalho nos finais de semana. XP defende que essa prática não é sustentável, e que as jornadas de trabalho devem ser sempre próximas de 40 horas, mesmo na véspera de entregas.

#### Contratos com Escopo Aberto

Quando empresas terceiriza o desenvolvimento, existem duas possibilidades de contrato: com escopo fechado ou com o escopo aberto. Em contratos com escopo fechado, a empresa contratante define, mesmo que de forma mínima, os requisitos do sistema e a empresa contratada define um preço e um prazo de entrega. 

XP advoga que contratos de escopo fechado são arriscados, pois os requisitos mudam e nem mesmo o cliente sabe antecipadamente o que ele quer que o sistema faça, de modo preciso. Assim, contratos com escopo fixo podem fazer com que a contratada entregue um sistema com problemas de qualidade e mesmo com alguns requisitos implementados de modo parcial ou com bugs, apenas para não ter que pagar possíveis multas.

Por outro lado, quando o escopo é aberto, o pagamento ocorre por hora trabalhada. Por exemplo, combina-se que a contratada vai alocar um time com um certo número de desenvolvedor para trabalhar integralmente no projeto, utilizando as práticas do XP. Combina-se também um preço para a hora de cada desenvolvedor. Esse tipo de contrato permite que ocorra rescisões ou renovações após certo tempo, o que dá a liberdade para o cliente mudar de empresa caso não esteja satisfeito com a qualidade do serviço prestado.

#### Métricas de processo

Para gerentes e executivos possam acompanhar um projeto XP recomenda-se o uso de duas métricas principais:
- 1. Números de Bugs em produção
- 2. Intervalo de tempo entre o início do desenvolvimento e o momento que o projeto começa a gerar os seus primeiros resultados financeiros.

## Scrum