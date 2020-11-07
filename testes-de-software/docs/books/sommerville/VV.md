# Capítulo 22 - Verificação e Validação

Um sistema de software (código fonte, documentação, guia de usuário, 
relatórios, etc) devem ser desenvolvido de modo que atenda as 
demandas dos usuários. Para que esse objetivo seja alcançado é 
necessário etapas de verificação e validação em todo seu 
ciclo de desenvolvimento.

Verificação e Validação (V & V) não são a mesma coisa. Verificação 
de um sistema de software é certificar que o produto está conforme 
os requisitos do projeto. Já Validação vai além da verificação, 
validar um software é certificar que o cliente está satisfeito 
com o produto desenvolvido. 

Especificações de sistema nem sempre refletem aos reais desejos 
e necessidades dos usuários, e mesmo que reflitam, essas 
necessidades podem mudar o decorrer do projeto. Desse modo é 
necessário introduzir etapas de verificação e validação em 
todos os estágios de desenvolvimento, visando diminuir o 
retrabalho.

## Abordagens de V & V

Os processos de V & V podem ser divididos em abordagens estáticas e 
abordagens dinámicas. Abordagens estática são técnicas que analisam 
o sistema de software sem a necessidade de executá-lo. Enquanto que 
as abordagens dinâmicas necessitam de módulos funcionais do 
software, uma vez que é preciso executá-los. 

Alguns exemplos de abordagens estáticas são inspeções de software, 
revisões por pares e auditorias, já abordagens dinámicas são 
testes unitários, testes de integração, testes de estresse e 
testes de segurança.

## Planejamento de V & V

Verificação e Validação é um processo que demanda tempo e 
consequentemente dinheiro. Os envolvidos no desenvolvimento devem 
dividir os esforços tanto em abordagens dinâmicas como estáticas, 
para que assim o produto seja validado e verificado durante todo 
o projeto.

## Inspeções de Software

Inspeções de Software é um processo de V & V estático, cujo objetivo 
é revisar o sistema de softare para encontrar erros, omissões, 
anomalias e contradições. Geralmente as inspeções enfocam o código 
fonte, porém todo subproduto do projeto pode e deve ser inspecionado.

Um exemplo prático é a inspeção dos requisitos do projeto, com o 
objetivo de encontrar contradições entre os requisitos, como 
"O software deve utilizar no máximo 200Kb" e 
"o software deve ser implementado em Python".
Após a inspeção e análise, analistas de sistema podem perceber que 
não é possível atender a ambos os requisitos, já que somente o 
interpretador de Python já consome mais memória que o máximo 
estipulado.

## Análise estáticas automatizadas

As inspeções de software pode ser automatizadas uma vez definido o 
que está procurando encontrar. Um ótimo exemplo são os `linters` 
das linguagens de programação, onde é procurado inconsequências no 
estilo de programação, partes do código que nunca são executadas. 
Outro tipo de análise é automatizada é procura de falhas na folha 
de estilo dos documentos (fontes erradas, numeração incorreta, 
links quebrados, etc). 

Vale ressaltar que por ser uma análise estática, o código em si não 
precisa está em funcionamento, uma vez que não é executado e sim 
analisado.

## Testes dinámicos

Os testes dinámicos atuam diretamente sobre o código do software, 
e portanto é preciso o software já esteja em um estágio de 
desenvolvimento onde é possível executá-lo, mesmo que seja em partes.

O desenvolvimento do software costuma começar com componentes 
independentes, que são agrupados em módulos integrados que 
implementam uma funcinalidade e que quando em conjunto compõe um 
sistema. Desse modo, é lógico que se comece o desenvolvimento de 
testes com os componentes (**testes unitários**) e depois nos módulos 
(**testes de integração**) e por último nos sistemas (**testes de sistema**).

Independente de qual parte do software está sendo testada, o 
objetivo é expor erros e comportamentos indesejáveis, para que assim 
sejam consertados o mais  rápido possível. A principal diferença é 
que **nos testes de integração e nos testes de sistema é possível 
também validar requisitos**. Por exemplo, é possível implementar um 
conjunto de teste que comprove que o CRUD de um sistema está 
conforme especificado.

Os testes dinâmicos podem ser categorizados em **testes de validação** e 
**testes de defeitos**. Nos testes de validação o objetivo é demonstrar 
o software funcionando em conformidade com base em um conjunto de 
entradas válidas, desse modo um teste de validação bem-sucedido é 
aquele que no final o sistema não apresenta anomalias. Já um teste 
de defeitos tem como objetivo expor erros através de sobrecarga de 
sistema, limitação de recurso, entradas corrompidas/inválidas com o 
objetivo de verificar o comportamento do software em situações 
anômalas.

## Teste de sistemas

Teste de sistemas são rotinas que verificam e certificam que 2 ou mais 
componentes estão se comportando de acordo com as especificações quando 
integrados. Os testes de sistema podem ser divididos em 2 categorias 
em sistema de grande porte, **testes de integração** e **testes de releases**.

Testes de integração são rotinas de testes que ocorrem sempre que um 
componente do sistema é modificado ou adicionado, visando verificar se 
o sistema como um todo continua se comportando como esperado. Esses 
testes somente Verificam o software.

Já testes de releases a rotina de software busca Validar o software 
junto ao cliente. Assim os testes tem como objetivo mostrar que os 
requisitos e especificações funcionais e não funcionais se encontram 
presentes durante a entrega do software ao cliente. Os testes de releases 
também podem ser chamados de **testes de aceitação**.

## Testes de integração

O processo de integração de um sistema envolve a construção de um 
sistema com base em seus componentes e os testes visam procurar 
problemas que podem surgir por conta dessa integração. 

Os componentes integrados podem ser comerciais, reusáveis ou específico 
do sistema em questão. Desse modo, problemas de compatibilidade de dados, 
interface e acoplamento pode surgir durante essa integração.

O principal problema enfrentado durante os testes de integração é rastrear 
a origem dos erros. Uma vez que uma funcionalidade apresente defeitos é 
preciso analisar onde se encontra a origem do defeito, que pode ser 
decorrente a interações complexas entre componentes.

Uma abordagem sugerida é que se realize uma abordagem incremental dos testes 
de integração. Por exemplo, imagine que a funcionalidade "Validação de cadastro" 
envolva os componentes A, B, C e D em suas rotinas. É sugerido que exista 
uma suite de teste que verifique a integração entre (A e B), caso nenhum problema 
seja exposto teste outra suite de teste (A, B e C), e por fim caso nenhum problema 
apareça teste (A, B, C e D). Com essa abordagem incremental se torna mais fácil 
identificar a origem do problema.

## Teste de Release

O objetivo de um teste de release é validar o software junto ao cliente. A meta 
principal é demonstrar que o sistema atende aos requisitos. Para demonstrar que 
o sistema atendem aos requisitos é preciso mostrar funcionalidades, desempenho e 
confiabilidade, além de não demonstrar falhas durante esse processo de 
demonstração.

Os testes de release são geralmente **testes caixa-preta** ou **testes funcionais**,
isso é, testes que analisam somente entradas e saídas, com objetivo de verificar 
se a funcionalidade se encontra implementada de acordo com seus requisitos 
não-funcionais.

Durante o teste de release também são executados **testes de defeito**, com o 
objetivo de demonstrar que o software mesmo com entradas inconsistentes 
permanece em um estado válido de funcionamento.

Uma vez que o objetivo do teste de release é demonstrar que os requisitos estão 
presentes no sistema, é necessário que cada requisito tenha uma suite de teste 
associada.

Requisitos não-funcionais são testados com **testes de desempenho**. 

## Testes de Desempenho

Testes de desempenho visam demonstrar que os requisitos não-funcionais estão 
presentes no sistema. Esses testes são realizados com base no requisito que se 
deseja demonstrar. O requisito de confiabilidade pode ser testado expondo o 
sistema a várias horas de funcionamento. Requisito de recuperabilidade pode ser 
testado forçando o sistema a falhar e observando se o sistema volta a um estado 
consistente. Requisitos de desempenho pode ser testado forçando o sistema a 
operar próximo dos limites estipulados.


## Teste de Componentes

Testes de componentes, também chamados de testes de unitários, são 
conjuntos de testes que visão expor erros e comportamentos inesperados 
em componentes de software.

Testes de funções, métodos e classes são exemplos de testes de componentes 
que um sistema deve possuir.

## Testes de interface

Uma prática comum no desenvolvimento de software moderno é a utilização de 
interfaces, facilitando assim a substituição de componentes sem grandes 
mudanças em outros trechos do sistema.

Desse modo, todo componente que implementar uma interface deve passar 
por uma suite de testes que certifique que a implementação da interface 
foi bem sucedida.

## Projeto de casos de teste

A primeira etapa do projeto de casos de teste é determinar o que será 
testado (componente, módulo, sistema, interface, etc). Após definido é 
preciso definir qual característica será averiguada ou testada. 

Uma vez definido o escopo do teste, é definido os casos que testam o sistema.
Os casos são um conjunto de entrada e saída esperados que comprovam 
uma funcionalidade ou que gera um dado (tempo de execução, memória utilizada, 
taxa de falha) que comprove uma funcionalidade ou expõe um erro.

A escolha desses casos de teste deve ser pensada com cuidado, para que o 
teste sirva ao seu propósito. Uma vez que é inviável testar todos os cenários 
possíveis é preciso uma abordagem prática para escolher quais cenários serão 
testados.

Existem várias abordagens para projetar os casos de testes, as três mais 
utilizadas são **Teste baseado em requisitos**, **Teste de partições** e 
**Teste Estrutural**.

## Teste baseado em requisitos

Nessa abordagem, os casos de testes são pensados com base nos requisitos 
do sistema. Teste baseados em requisitos são testes de validação em vez de 
teste de defeitos, logo seu propósito é demonstrar que todas as 
especificações definidas nos requisitos são atendidas por uma suite de teste.

## Teste de partições

Essa abordagem considera que é possível validar um grupo de entrada a partir 
de um representante desse grupo. Por exemplo, imagine que é preciso testar 
uma função chamada "add(int x, int y)", nessa abordagem é considerado um 
teste com dois representantes dos conjuntos dos "ints" é suficiente para 
validar todo o grupo dos inteiros. 

Para essa abordagem é necessário analisar quais são os intervalos possíveis 
de valores para que seja possível escolher bons representantes desse conjunto.

Uma boa prática é escolher valores de margens e valores médios para os 
representantes. Ou seja, no exemplo acima, considerando que os inteiros vão de 
[-2³¹, 2³¹-1] seria interessante testar as margens desses conjunto para 
verificar se a função apresenta comportamentos inesperados.

## Teste estrutural

Nessa abordagem é levado em conta os estados intermediários durante a execução.
Desse modo é preciso analisar a estrutura interna do que será testado para 
que seja possível testar todos os fluxos de execução possíveis.

Por exemplo, imagine que uma função que processe uma lista de valores e 
adicione 20 se o valor for maior que 10 ou substraia 30 se o valor for 
menor que 5. Nesse caso é preciso testar os 2 fluxos possíveis dessa função, 
escolhendo tanto valores maiores que 10 quanto valores menores que 5.

