# Capítulo 1

## Crise do software

A expressão “crise do software” foi usada pela primeira vez com impacto por Dijkstra (1971) 1 . Ele avaliava que, considerando o rápido progresso do hardware e das demandas por sistemas cada vez mais complexos, os desenvolvedores simplesmente estavam se perdendo, porque a engenharia de software, na época, era uma disciplina incipiente. Os problemas relatados por Dijkstra eram os seguintes:
- Projetos que estouram o cronograma.
- Projetos que estouram o orçamento.
- Produto final de baixa qualidade ou que não atenda aos requisitos.
- Produtos não gerenciáveis e difíceis de manter e evoluir.

Embora a engenharia de software tenha evoluído como ciência, sua aplicação na prática ainda é muito limitada, especialmente em empresas de pequeno porte e em empresas novas.

| Autores da crise do software | Problemas |
| :-: | :-: |
| Alta administração | 1. Prazos não são cumpridos <br> 2. Custos muito elevados <br> 3. Sistemas que demandam muita manutenção <br> 4. Dificuldade para recrutar profissionais qualificados |
| Usuários | 1. Erros e falhas inadmissíveis em sistemas entregues <br> 2. Insegurança no uso dos sistemas <br> 3. Necessidade constante de manutenção <br> 4. Alto custo de aquisição |
| Desenvolvedores | Baixa produtividade em relação ao potencial <br> 1. Lamentam a falta de qualidade dos produtos entregues <br> 2. Sofrem pressão para cumprir prazos e orçamentos apertados <br> 3. Insegurança com as mudanças de tecnologias que afetam sua qualificação no mercado |

## (In)Definição de Engenharia de Software

> A Engenharia de Software forma um aglomerado de conceitos que dizem absolutamente nada e que geram no estudante dessa área um sentimento de “Nossa, li 15 kg de livros desta mesma. e não aprendi nada”. É tudo bom senso.
> 
> -- <cite>Desciclopédia</cite>

Efetivamente, não é algo simples conceituar e praticar a Engenharia de Software. Mas é necessário. Primeramente, deve-se ter em mente que os processos de Engenharia de Software são diferentes, dependendo do tipo de software que se vai desenvolver. Dependendo do nível de conhecimento ou estabilidade dos requisitos, deve-se optar por um ou por outro ciclo de vida, o qual será mais adequado ao tipo de desenvolvimento que se vai encontrar.

Várias definições de Engenharia de Software podem ser encontradas na literatura, como, por exemplo:

- a) Engenharia de software é uma profissão dedicada a projetar, implementar e modificar software, de forma que ele seja de alta qualidade, a um custo razoável, manutenível e rápido de construir (Laplante, 2007).

- b) Engenharia de software é a aplicação de abordagens sistemáticas, disciplinadas e quantificáveis ao desenvolvimento, operação e manutenção de software, além do estudo dessas abordagens (IEEE Computer Society, 2004).

## O Engenheiro de Software

O engenheiro de software assemelha-se ao engenheiro de produção. Ele deve fornecer aos desenvolvedores (inclusive gerentes, analistas e designers) as ferramentas e processos que deverão ser usados e será o responsável por verificar se esse uso está sendo feito efetivamente e de forma otimizada. Além disso, caso tais ferramentas e processos apresentem qualquer problema, ele será o responsável por realizar as modificações necessárias, garantindo assim sua contínua melhoria.

O engenheiro de software, portanto, não desenvolve nem especifica software. Ele viabiliza e acompanha o processo de produção, fornecendo e avaliando as ferramentas e técnicas que julgar mais adequadas a cada projeto ou empresa.

O **Engenheiro de software** escolhe e muitas vezes, especifica os processos de planejamento, gerência e produção a serem implementados. Ele acompanha e avalia o desenvolvimento de todos os projetos da empresa para verificar se o processo estabelecido é executado de forma eficiente e efetiva. Caso sejam necessárias mudançãs no processo estabelecido, ele as identifica e realiza, garantindo que a equipe adote tais mudanças. Ele reavalia o processo continuamente.

O **gerente de projeto** cuida de um projeto específico, garantindo que os prazos e orçamento sejam cumpridos. Ele segue as práticas definidas no processo de engenharia. É responsável por verificar a aplicação do processo pelos desenvolvedores e, se necessário, reporta-se ao engenheiro de software para sugerir melhorias.

O **analista** é um desenvolvedor responsável pela compreensão do problema relacionado ao sistema que se deve desenvoler, ou seja, pelo levantamento dos requisitos e sua efetiva modelagem. O analista deve, portanto, descobrir o que o cliente precisa (por exemplo, controlar suas vendas, comissões, produtos etc.)

O **designer** deve levar em conta as especificações do analista e propor a melhor tecnologia para produzir um sistema executável para elas. Deve, então, apresentar uma solução para as necessidades do cliemte (por exemplo, propor uma solução baseada em web, com um banco de dados centralizado acessível por dispositivos móveis etc.)

O **programador** vai construir a solução física a partir das especificações do designer. É ele quem gera o produto final, e deve conhecer profundamente a linguagem e o ambiente de programação, bem como as bibliotecas que for usar, além de ter algum conhecimento sobre testes e depuração de software.

Evidentemente, muitas vezes essa divisão de papéis não é observada estritamente nas empresas. Apenas empresas de médio e grande porte podem se dar o luxo de ter um ou mais engenheiros de software dedicados. Mas é importante que se tenha em mente que, ainda que uma pessoa execute mais de um papel nesse processo, esses papéis são distintos.

## Tipos de software do ponto de vista da engenharia

Não existe um processo único e ideal para o desenvolvimento de software, porque cada sistema tem suas particularidades. Porém, usualmente, podem-se agrupar os sistemas de acordo com certas características e então definir modelos de processos mais adequados a elas. Do ponto de vista da engenharia de software, os sistemas podem ser classificados da seguinte forma:

- a) Software básico: são os compiladores, drivers e componentes do sistema operacional

- b) Software de tempo real: São sistemas que monitoram, analisam e controlam eventos do mundo real

- c) Software comercial: são os sistemas aplicados nas empresas, como controle de estoque, vendas etc. Tais sistemas usualmente acessam bancos de dados. São também conhecidos como sistemas de informação.

- d) software cietíficos e de engenharia: são os sistemas que utilizam processamento de números

- e) Software embutido ou embargado: são os sistemas de software presentes em celulares, eletrodomésticos, automóveis etc. Normalmente, tais sistemas precisam trabalhar sob severas restrições de espaço, tempo de processamento e gasto de energia.

- f) Software pessoal: são sistemas usados por pessoas no dia a dia, como processadores de texto, planilhas etc.

- g) Jogos: embora existam alguns jogos cujo processamento não é muito complexo, existem também aqueles que exigem o máximo dos computadores em função da qualidade de gráficos e da necessidade de reação em tempo real. Apesar disso, todas as categorias de jogos têm características intrínsecas que extrapolam o domínio da engenharia de software.

- h) Inteligência artifical: são sistemas especialistas, redes neurais e sistemas capazes de alguma forma de aprendizado. Além de serem sistemas independentes, com um tipo de processamento de construção próprio, podem também ser embutido em outros sistemas.

Nesse livro, a ênfase estará no sistema de informação, ou seja, será mostrado basicamente como desenvolver um processo de engenharia de software para sistemas do tipo "comercial". Apesar disso, algumas técnicas poderão ser aplicadas também ao desenvolvimento de outros tipos de software.

## Princípios da Engenharia de Software

A engenharia de software classicamente apresenta um conjunto de princípios que devem ser usados quando um projeto de desenvolvimento de software for realizado. A ideia é que esses princípios funcionem como boas práticas ou lições aprendidas sobre como desenvolver software. Usualmente não se trata de regras, mas de uma filosofia de desenvolvimento. Entre outros princípios, pode-se citar:

- a) Decomposição: um dos mais antigos princípios em desenvolvimento de software é a noção de que o software é um produto complexo construído a partir de partes cada vez mais simples. A decomposição funcional é uma maneira de conceber o software como um conjunto de funções de alto nível (requisitos) que são decompostas em partes cada vez mais simples até chegar a comandos individuais de uma linguagem de programação. Modernamente, essa noção foi substituída pela decomposição em objetos, na qual, em vez de decompor a função original em funções cada vez mais simples, procura-se determinar uma arquitetura de classes de objetos que possa realizar a função.

- b) Abstração: outro princípio antigo da engenharia de software é o uso da abstração, que consiste em descrever um elemento em uma linguagem de nível mais alto do que o necessário para sua construção. Um sistema de software, por exemplo, pode ser composto por 100 mil linhas de código (sua representação física concreta), porém, usando-se abstração, talvez o mesmo sistema possa ser descrito por um diagrama ou por umas 50 linhas de texto. A abstração ajuda os interessados no processo de desenvolvimento a entender estruturas grandes e complexas através de descrições mais abstratas.

- c) Generalização: o princípio da generalização deu origem à orientação a objetos, em que um objeto pode ser classificado simultaneamente em mais de uma classe. Por exemplo, um cão, além de ser um mamífero, é animal e vertebrado. Esse princípio é usado não só na classificação de dados, mas também em várias outras situações em projetos de desenvolvimento de software, como a arquitetura dos sistemas.

- d) Padronização: a criação de padrões (patterns) de programação, design e análise ajuda a elaborar produtos com qualidade mais previsível. Padrões também são importantes para a capitalização de experiências. Desenvolvedores que não utilizam padrões podem repetir erros que já têm solução conhecida.

- e) Flexibilização: uma das qualidades a serem buscadas no desenvolvimento de software é a flexibilização, a fim de que se tenha mais facilidade para acomodar as inevitáveis mudanças nos requisitos. Infelizmente, essa qualidade não pode ser obtida sem certo custo inicial, mas, muitas vezes, esse investimento compensa a economia que se obtém depois.

- f) Formalidade: como o software é um construto formal, de modo geral aceita-se que deva ser especificado de maneira também formal. Existem técnicas que iniciam com descrições informais, mas, à medida que caminham para o produto final, elas precisam ser cada vez mais formais. Outras técnicas já iniciam com documentos formais, de alta cerimônia, e tendem a ser menos ambíguas, embora algumas vezes sejam mais difíceis de se compreender.

- g) Rastreabilidade: o software é desenvolvido por um processo complexo no qual diferentes documentos e especificações são produzidos e, algumas vezes, derivados uns dos outros. É necessário manter um registro de traços entre os diferentes artefatos para que se saiba quando alterações feitas em um deles se refletem em outros. Por exemplo, um requisito que muda tem efeito sobre vários outros artefatos, como modelos de classes, casos de uso ou mesmo código executável.

- h) Desenvolvimento iterativo: no início da era do computador, quando o software era mais simples, até se podia conceber o desenvolvimento como um processo de um único ciclo, com início e fim bem definidos. Porém, as técnicas modernas apontam cada vez mais para o desenvolvimento iterativo como uma maneira de lidar com a crescente complexidade do software. Assim, vários ciclos de desenvolvimento são realizados, cada qual com um conjunto de objetivos distintos e cada qual contribuindo para a geração e amadurecimento do produto final.

- i) Gerenciamento de requisitos: antigamente, acreditava-se que era possível descobrir de saída quais eram os requisitos de um sistema. Depois, bastava desenvolver o melhor sistema possível que atendesse a esses requisitos. Modernamente, sabe-se que requisitos mudam com muita frequência e que por isso é necessário gerenciar sua mudança como parte integrante do processo de desenvolvimento e evolução de software, e não apenas como um mal necessário.

- j) Arquiteturas baseadas em componentes: a componentização do software é uma das formas de se obter reusabilidade e também de lidar melhor com a complexidade.

- k) Modelagem visual: o princípio da abstração, por vezes, exige que o software seja entendido de forma visual. A UML (Unified Modeling Language) é usada para representar visualmente várias características da arquitetura de um sistema. Cada vez mais, espera-se que, a partir de modelos visuais, seja possível gerar sistemas completos sem passar pelas etapas mais clássicas de programação.

- l) Verificação contínua da qualidade: a qualidade de um produto de software não é um requisito que possa ser obtido no final ou ser facilmente melhorado ao final do desenvolvimento. A preocupação com a qualidade e sua garantia deve estar presente ao longo de qualquer projeto de desenvolvimento.

- m) Controle de mudanças: não é mais possível gerenciar adequadamente um processo de desenvolvimento sem ter o controle de versões de componentes do software e de sua evolução. Muitas vezes, é necessário voltar atrás em um caminho de desenvolvimento ou ainda bancar o desenvolvimento em paralelo de diferentes versões de um mesmo componente. Sem um sistema de gerenciamento de configuração e mudança, seria muito difícil, senão impossível, fazer esse controle de forma efetiva.

- n) Gerenciamento de riscos: é sabido que uma das principais causas de fracasso de projetos de software é o fato de que os planejadores e gerentes podem não estar atentos aos riscos do projeto. Quando um risco se torna um problema, um gerente que já tenha um plano de ação certamente vai se sair melhor do que aquele que é pego de surpresa. Além disso, com o gerenciamento de riscos, é possível realizar ações preventivas de forma a reduzir a probabilidade ou o impacto do risco.

Esses são apenas alguns dos princípios, e muitos outros poderiam ser adicionados. Isso será feito ao longo dos próximos capítulos, quando esses princípios e muitos outros  mencionados nos diversos tópicos relacionados à área de Engenharia de Software.