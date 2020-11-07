# Capítulo 2

## Processo

Este capítulo conceitua, de forma genérica, o que é um processo de desenvolvimento de software, sem detalhar este ou aquele modelo de ciclo de vida. Inicialmente, é mostrado que, tipicamente, um processo de desenvolvimento se subdividem em fases com objetivos distintos, nas quais determinadas disciplinas (como análise de requisitos, implementação e testes) podem ser exercitadas com exclusividade ou predominância. **Processos usualmente são definidos como conjunto estruturado de atividades para as quais são determinados artefatos de entrada e saída, papéis de responsáveis e participantes, além de recursos necessários.** Atividades podem ser detalhadas pela definição de passos de execução, procedimentos e regras. 

Um processo pode ser entendido como um conjunto de atividades:
- a) Interdependentes.
- b) Com responsáveis.
- c) Com entradas e saídas definidas.

## Definições

Projeto é algo que ocorre em um tempo determinado. Consiste na execução concreta de um conjunto de atividades que visam à criação de um produto específico.

Processo é um conjunto de regras que definem como um projeto deve ser executado. Um processo normalmente é adotado por uma empresa como um conjunto de regras que seus funcionários devem seguir sempre que trabalharem em um projeto.

Modelo de processo é um conjunto de regras mais abstratas que especificam a forma geral de processos. Um modelo de processo apresenta uma filosofia, uma forma geral de comportamento com base na qual processos específicos podem ser definidos.

Os modelos de processos para as atividades de projeto e desenvolvimento de software também pode ser chamado de ciclo de vida. Assim, quando uma empresa decide adotar um processo, deve buscar um modelo e adaptar a filosofia e as práticas recomendadas para criar seu próprio processo. A partir daí, todos os projetos da empresa deverão seguir o processo definido.


## Vantagens do uso de processos estruturados

Quando um software é desenvolvido com base em um processo estruturado:
- a) **O tempo de treinamento pode ser reduzido**: com processos bem definidos e documentados, é mais fácil encaixar novos indivíduos na equipe do que quando não se dispõe deles.
- b) **Produtos podem ser mais uniformizados**: a existência do processo não garante a uniformidade na qualidade dos produtos, mas certamente uma equipe com um processo bem definido tende a ser mais previsível do que a mesma equipe sem processo algum.
- c) **Possibilidade de capacitar experiências**: pode-se imaginar que um processo de trabalho bem definido poderia tolher o uso da criatividade dos seus desenvolvedores. Contudo, isso não é verdade, a não ser que a empresa tenha processos engessadores, o que não é bom. Um processo bem gerenciado deve ter embutidos mecanismos para melhoria. Assim, se um desenvolvedor descobrir um meio de fazer as coisas de maneira melhor do que a que está descrita no processo, deve haver meios para incorporar essas alterações.



## Fases

Embora a nomenclatura possa varia de um modelo de processo para outro, usualmente se considera que a primeira grande divisão de um processo é a fase. Um fase é um período de tempo no qual determinadas atividades com objetivos bem específicos são realizadas. As fases são, então, as grandes divisões dos processos, e normalmente sua grande quantidade é pequena (menos de 10).

Alguns processos, como o Modelo Cascata e suas variantes, têm **fases sequenciais**, ou seja, com o passar do tempo o processo de desenvolvimento passa de uma fase a outra, como requisitos, análise, programação, teste e implantação.

Outros modelos podem ter **fases cíclicas**, ou seja, o desenvolvimento passa repetidamente de uma fase para outra, formando um ciclo repetitivo de fases até a finalização do projeto. Exemplos desse tipo de modelo são o Modelo Espiral e o Modelo de Prototipação Evolucionária, além dos modelos ágeis.

O Processo Unificado (UP) é estruturado em quatro fases (embora algumas variantes tenham até seis fases), que são sequenciais no tempo. Dentro de cada fase, as atividades são organizadas de forma cíclica, ou seja, existem ciclos interativos dentro das fases, mas elas são sequenciais.

Cada fase de um processo deve ter um macro-objetivo bem estabelecido. Por exemplo, no caso do UP, a fase de _concepção_ tem como macro-objetivo uma primeira abordagem sobre o sistema e seus requisitos. A fase de _elaboração_ busca aprofundar a análise, detalhar o design do sistema e estabilizar sua arquitetura. Já a fase de _construção_ visa produzir código executável e testado. Finalmente, a transição visa à instalação e operação do sistema no ambiente final.


## Disciplinas

O termo _disciplina_ aparece com mais frequência no Processo Unificado, no qual as disciplinas equivalem grosseiramente às fases do Modelo Cascata, embora com outro significado. _Disciplina_ é entendida como um conjunto de atividades ou tarefas correlacionadas, as quais servem a um objetivo específico dentro do processo de desenvolvimento.

Existem, por exemplo, disciplinas relacionadas à _produção_, como análise de requisitos, modelagem, programação etc., mas também existem disciplinas de apoio, como gerência de projeto, ambiente e gerência de configuração.

As disciplinas usualmente são compostas por tarefas ou atividades que se organizam em um grafo de depedência, que estabelece em que ordem (se for o caso) as atividades devem ser executadas.

No Processo Unificado, por exemplo, todas as disciplinas são exercitadas em todas as fases, cada uma com maior ou menor intensidade. Outros ciclos de vida não utilizam explicitamente o conceito de disciplina, sendo organizados normalmente em todo de tarefas ou atividades a serem executadas em cada fase.

## Atividades ou Tarefas

A maioria dos processos de software é organizada em torno de tarefas, às vezes também chamadas de atividades. Toda atividade tem um objetivo principal estabelecido e visa criar ou produzir uma mudança de estado visível em um ou mais artefatos durante a execução de um projeto.

As atividades devem ter _entradas_ e _saídas_ bem definidas. Uma atividade toma artefatos de entrada e produz como saída novos artefatos e/ou promove uma modificação bem definida nos artefatos de entrada.

As atividades também devem ter identificados os responsáveis e os participantes. _Responsáveis_ são as pessoas que devem realizar a atividade e responder pela sua conclusão. Já os _participantes_ agem apenas em resposta à iniciativa dos responsáveis. O ideal é que o responsável seja uma única pessoa (ou cargo). Por exemplo, uma atividade de levantamento de requisitos terá como responsável um analista e como participantes os clientes e usuários.

Cada atividade também necessita de um conjunto de **recursos** alocados, não apenas recursos humanos, que já estarão previstos na forma de responsáveis e participantes, mas recusos físicos, como horas de computador, licença de softwares, papel, passagens etc.

As atividades de um processo normalmente são descritas por um documento. Esse documento poderá ter as seguintes seções:

- a) Cabeçalho:
  - Nome do processo
  - Nome da fase (se cabível)
  - Nome da atividade
  - Versão do documento
  - Responsável (cargo)
  - Participantes (opcional)
  - Artefatos de entrada (opcional)
  - Artefatos de saída
  - Recursos alocados (opcional)
- b) Corpo contendo o detalhamento da atividade 


## Artefatos

_Artefatos_ são quaisquer documentos que puderem ser produzidos durante um projeto de desenvolvimento de software, incluíndo diagramas, programas, documentos de texto, desenhos, contratos, projeto, planos etc.

Alguns modelos de processos (como RUP) são mais hierárquico, e determinam que cada artefato tenha um dono, sendo ele o único que pode modificá-lo ou permitir sua modificação.

Já outros modelos de processos são menos restrititos, e não determinam posse aos documentos, assim permitindo que qualquer um da equipe modifique os artefatos, desde que exista uma boa razão para isso.

## Responsáveis e Participantes

Os _responsáveis_ são perfis de pessoas ou cargos que respondem pela realização de uma atividade. Na prática, é interessante que qualquer atividade tenha um único responsável. Quando existem vários responsáveis pela mesma atividade, pode ocorrer de ninguém se sentir realmente responsável pela atividade.

Na descrição de um processo, **as atividades devem ser atribuídas a perfis ou cargos, e não a pessoas**. Apenas quando o processo for usado em um projeto concreto é que deve haver atribuições de atividades a pessoas. Por exemplo, uma atividade de análise de requisitos terá como responsável uma analista, mas não é o caso de nomeá-lo na descrição da atividade que compõe a documentação do processo. A atribução de atividade a pessoas deve ser feita durante o planejamento ou durante a gerência de um projeto.

Os _participantes_ são todas as outras pessoas (perfis ou cargos) que precisam participar de alguma atividade para que ela seja concluída. Não são necessariamente responsáveis pela atividade, mas precisam participar dela. Por exemplo, o cliente deve participar da atividade de levantamento de requisitos, mas o responsável por ela é o analista.


## Recursos 