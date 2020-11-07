# Capítulo 2 Teste Funcional

## 2.1. Introdução

Teste funcional é uma técnica utilizada para se projetarem casos de teste na qual o programa ou sistema é considerado uma <mark>caixa preta</mark> e, para testá-lo, são fornecidas entradas e avaliadas as saídas geradas para <mark>verificar se estão em conformidade com os objetivos especificados</mark>. Nessa técnica <mark>os detalhes de implementação não são considerados</mark> e o software é avaliado segundo o <mark>ponto de vista do usuário</mark>.

Em princípio, o teste funcional pode detectar todos os defeitos, submetendo o programa ou sistema a todas as possíveis entradas, o que é denominado teste exaustivo. No entanto, o domínio de entrada pode ser infinito ou muito grande, de modo a tornar o tempo da atividade de teste inviável, fazendo com que essa alternativa se torne impraticável. Essa limitação da atividade de teste, que não permite afirmar, em geral, que o programa esteja correto, fez com que fossem definidas as técnicas de teste e os diversos critérios pertencentes a cada uma delas. Assim, é possível conduzir essa atividade de maneira mais sistemática, podendo-se inclusive, dependendo do critério utilizado, ter uma avaliação quantitativa da atividade de teste.

O que distingue essencialmente as três técnicas de teste – Funcional, Estrutural e Baseada em Erros – é a fonte utilizada para definir os requisitos de teste. Além disso, cada critério de teste procura explorar determinados tipos de defeitos, estabelecendo requisitos de teste para os quais valores específicos do domínio de entrada do programa devem ser definidos com o intuito de exercitá-los.

Considerando a técnica de teste funcional, um de seus critérios é o Particionamento de Equivalência, como será visto com mais detalhe adiante. O teste de partição tem o objetivo de fazer uma divisão (particionamento) do domínio de entrada do programa de tal modo que, quando o testador seleciona casos de teste dos subconjuntos (partições ou subdomínios), o conjunto de testes resultante é uma boa representação de todo o domínio. Segundo a visão de alguns autores, o teste de partição e o teste randômico são, basicamente, as duas abordagens para se conduzir a atividade de teste. Em resumo, o teste randômico consiste em definir, de alguma forma, um domínio de entradas para um programa e então testá-lo com dados de teste que são selecionados randomicamente desse domínio.

Weyuker e Jeng referem-se ao teste de partição como uma família de estratégias de teste e consideram que, embora matematicamente o termo partição se refira a uma divisão em subconjuntos disjuntos, na prática, isso dificilmente ocorre e os subconjuntos da partição se sobrepõem. O ideal, segundo eles, seria que cada partição contivesse apenas elementos que ou fizessem o programa produzir somente saídas corretas ou somente saídas incorretas, sendo, neste último caso, denominadas partições reveladoras. Assim, segundo os autores, existem várias maneiras de definir a partição de modo a tornar melhor ou pior sua capacidade de detectar defeitos. As técnicas de teste funcional abordam esse problema olhando diretamente o domínio de entrada e procurando estabelecer os subdomínios de interesse.

## 2.2. Histórico

Desde os anos 70 encontra-se literatura sobre teste funcional. Nessa época também surgiram vários métodos para apoiar a especificação de sistemas, como a Análise e Projeto Estruturado, no qual eram mencionados, embora não diretamente, aspectos de validação do sistema com relação à satisfação dos seus requisitos funcionais. Nesse sentido, algumas técnicas usadas para descrever tais requisitos de forma completa e não ambígua são técnicas que também estão incorporadas em critérios funcionais, como é o caso das Tabelas de Decisão, utilizadas no critério Grafo Causa-Efeito, como será visto neste capítulo.

Roper faz uma discussão sobre a atividade de teste ao longo do ciclo de vida de desenvolvimento, considerando vários aspectos e características dos métodos de análise e projeto em relação ao teste funcional e às demais técnicas abordadas neste livro.

Outro critério do teste funcional, o Particionamento de Equivalência, que a princípio considerava a elaboração de casos de teste baseados apenas no domínio de entrada do programa, passou a ser tratado posteriormente de dois pontos de vista, o de entrada e o de
saída.

## 2.3. Critérios

Os critérios mais conhecidos da técnica de teste funcional são Particionamento de Equivalência, Análise do Valor Limite, Grafo Causa-Efeito e Error-Guessing. Além desses, também existem outros, como, por exemplo, Teste Funcional Sistemático, Syntax Testing, State Transition Testing e Graph Matrix.

Como todos os critérios da técnica funcional baseiam-se apenas na especificação do produto testado, <mark>a qualidade de tais critérios depende fortemente da existência de uma boa especificação de requisitos</mark>. Especificações ausentes ou mesmo incompletas tornarão difícil a aplicação dos critérios funcionais. Além disso, tais critérios também apresentam a limitação de não garantir que partes essenciais ou críticas do produto em teste sejam exercitadas.

Por outro lado, os critérios funcionais podem ser aplicados em todas as fases de testes e em produtos desenvolvidos com qualquer paradigma de programação, pois não levam em consideração os detalhes de implementação.

A seguir apresenta-se a especificação do programa “Cadeia de Caracteres”, extraída de Roper , que será utilizada para exemplificar alguns desses critérios.

Especificação do programa “Cadeia de Caracteres”:

> O programa solicita do usuário um inteiro positivo no intervalo entre 1 e 20 e então solicita uma cadeia de caracteres desse comprimento. Após isso, o programa solicita um caractere e retorna a posição na cadeia em que o caractere é encontrado pela primeira vez ou uma mensagem indicando que o caractere não está presente na cadeia. O usuário tem a opção de procurar vários caracteres.

### 2.3.1 Particionamento em classes de equivalência

Considerando-se que o teste exaustivo é, em geral, impossível de ser aplicado, durante a atividade de teste, o testador fica restrito a usar um subconjunto de todas as possíveis entradas do programa, sendo que esse subconjunto deve ter uma grande probabilidade de encontrar
defeitos.

Com o objetivo de apoiar a determinação desse subconjunto, tornando a quantidade de dados de entrada finita e mais viável para uma atividade de teste, o particionamento de equivalência divide o domínio de entrada em classes de equivalência que, de acordo com a especificação do programa, são tratadas da mesma maneira. Assim, uma vez definidas as classes de equivalência, pode-se assumir, com alguma segurança, que qualquer elemento da classe pode ser considerado um representante desta, pois todos eles devem se comportar de forma similar, ou seja, se um elemento detectar um defeito, qualquer outro também detecta; se não detectar, os outros também não detectam. Dessa forma, o critério reduz o domínio de entrada a um tamanho passível de ser tratado durante a atividade de teste. Além do domínio de entrada,
alguns autores consideram também o domínio de saída, identificando neste possíveis alternativas que poderiam determinar classes de equivalência no domínio de entrada.

Para ajudar na identificação das partições, pode-se observar a especificação procurando termos como “intervalo” e “conjunto” ou palavras similares que indiquem que os dados são processados da mesma forma.

Uma classe de equivalência representa um conjunto de estados válidos ou inválidos para as condições de entrada. As classes podem ser definidas de acordo com as seguintes diretrizes:
- 1) se a condição de entrada especifica um intervalo de valores, são definidas uma classe válida e duas inválidas;
- 2) se a condição de entrada especifica uma quantidade de valores, são definidas uma classe válida e duas inválidas; 
- 3) se a condição de entrada especifica um conjunto de valores determinados e o programa pode manipulá-los de forma diferente, é definida uma classe válida para cada um desses valores e uma classe inválida com outro valor qualquer; 
- 4) se a condição de entrada especifica uma situação do tipo “deve ser de tal forma”, são definidas uma classe válida e uma inválida.

Caso seja observado que as classes de equivalência se sobrepõem ou que os elementos de uma mesma classe não devem se comportar da mesma maneira, elas devem ser reduzidas a fim de separá-las e torná-las distintas.

Uma vez identificadas as classes de equivalência, devem-se determinar os casos de teste, escolhendo-se um elemento de cada classe, de forma que cada novo caso de teste cubra o maior número de classes válidas possível. Já para as classes inválidas, devem ser gerados casos de testes exclusivos, uma vez que um elemento de uma classe inválida pode mascarar a validação do elemento de outra classe inválida.

#### 2.3.1.1 Exemplo de Aplicação

De acordo com a descrição do critério, os dois passos a serem realizados são: 
- i) identificar as classes de equivalência, o que deve ser feito observando-se as entradas e as saídas do programa com o objetivo de particionar o domínio de entrada e; 
- ii) gerar casos de teste selecionando um elemento de cada classe, de forma a ter o menor número de casos de teste possível.

Considerando a especificação dada anteriormente, têm-se quatro entradas

**T** - tamanho da cadeia de caracteres;
**CC** - uma cadeia de caracteres;
**C** - um caractere a ser procurado;
**O** - a opção por procurar mais caracteres.

De acordo com a especificação, as variáveis CC e C não determinam classes de equivalência, pois os caracteres podem ser quaisquer. Já o tamanho da cadeia deve estar no intervalo entre 1 e 20 (inclusive) e a opção do usuário pode ser “sim” ou “não”.

Considerando o domínio de saída, têm-se duas alternativas:

- 1. a posição na qual o caractere foi encontrado na cadeia de caracteres;
- 2. uma mensagem declarando que o caractere não foi encontrado.

Essa informação pode ser usada para fazer outra partição no domínio de entrada: uma contendo caracteres que são encontrados na cadeia e a outra contendo caracteres que não pertencem à cadeia. A Tabela 2.1 apresenta as classes de equivalência identificadas.

<div align="center">
  <img src="books/eduardo_delamaro/static/tabela-2-1.png" width="700">
</div>

Identificadas as classes de equivalência, escolhem-se, arbitrariamente, elementos de cada classe e os casos de teste podem ser definidos como está apresentado na Tabela 2.2.

<div align="center">
  <img src="books/eduardo_delamaro/static/tabela-2-2.png" width="700">
</div>

#### 2.3.1.2 Avaliação do critério

A força desse critério está na redução que ele possibilita no tamanho do domínio de entrada e na criação de dados de teste baseados unicamente na especificação. Ele é especialmente adequado para aplicações em que as variáveis de entrada podem ser identificadas com facilidade e assumem valores específicos. <mark>No entanto, o critério não é tão facilmente aplicável quando o domínio de entrada é simples, mas o processamento é complexo</mark>. Um problema possível de ocorrer é que, embora a especificação possa sugerir que um grupo de dados seja processado de forma idêntica, na prática isso pode não acontecer. Além disso, a técnica não fornece diretrizes para a determinação dos dados de teste e para encontrar combinações entre eles que permitam cobrir as classes de equivalência de maneira mais eficiente.

### 2.3.2 Análise do valor limite

De acordo com Meyers, a experiência mostra que casos de teste que exploram condições limites têm uma maior probabilidade de encontrar defeitos. Tais condições correspondem a valores que estão exatamente sobre ou imediatamente acima ou abaixo dos limitantes das classes de equivalência.

Assim, esse critério é usado em conjunto com o particionamento de equivalência, mas em vez de os dados de teste serem escolhidos aleatoriamente, eles devem ser selecionados de forma que o limitante de cada classe de equivalência seja explorado. Segundo Meyers, além da escolha seletiva dos dados de teste, o outro ponto que distingue esse critério do Particionamento de Equivalência é a observação do domínio de saída, diferentemente de outros autores, que já fazem essa consideração no próprio critério de Particionamento de Equivalência.

Embora não existam diretrizes bem definidas que levem à determinação dos dados de teste, Meyers sugere que as seguintes recomendações sejam seguidas:

- 1. se a condição de entrada especifica um intervalo de valores, devem ser definidos dados de teste para os limites desse intervalo e dados de teste imediatamente subseqüentes, que explorem as classes inválidas vizinhas desse intervalo. Por exemplo, se uma classe válida estiver no intervalo −1, 0 e +1, 0, devem ser definidos os seguintes dados de teste: −1, 0; +1, 0; −1, 001 e +1, 001;
- 2. se a condição de entrada especifica uma quantidade de valores, por exemplo, de 1 a 255 valores, devem ser definidos dados de teste com nenhum valor de entrada, somente um valor, 255 valores e 256 valores de entrada;
- 3. usar a diretriz 1 para as condições de saída;
- 4. usar a diretriz 2 para as condições de saída;
- 5. se a entrada ou saída for um conjunto ordenado, deve ser dada maior atenção aos primeiro e último elementos desse conjunto;
- 6. usar a intuição para definir outras condições limites.

#### 2.3.2.1 Exemplo de Aplicação

Considerando as classes de equivalência segundo o critério Particionamento de Equivalência (Tabela 2.1) e lembrando que devem ser explorados os limites tanto do ponto de vista de entrada como de saída, os casos de teste que satisfazem o critério Análise do Valor Limite são apresentados na Tabela 2.3. Observa-se que a linha dupla na tabela denota uma segunda execução do programa, pois só assim todos os casos de teste necessários para satisfazer o critério podem ser exercitados.

<div align="center">
  <img src="books/eduardo_delamaro/static/tabela-2-3.png" width="700">
</div>

Um outro exemplo que caracteriza bem a diferença entre o Particionamento de Equivalência e Análise do Valor Limite é o exemplo do triângulo, dado por Meyers. Para que três valores representem um triângulo, eles devem ser inteiros maiores que zero e a soma de quaisquer desses dois valores deve ser maior que o terceiro valor. Assim, ao definirem-se as classes de equivalência, a válida seria aquela em que essa condição é satisfeita e a classe inválida seria aquela em que a soma de dois dos valores não é maior que o terceiro valor. Para o Particionamento de Equivalência, dois dados de teste seriam 3; 4; 5 e 1; 2; 4 para as classes válida e inválida, respectivamente.

#### 2.3.2.2 Avaliação do Critério

As vantagens e desvantagens do critério Análise do Valor Limite são similares às do critério Particionamento de Equivalência, sendo que existem diretrizes para que os dados de teste sejam estabelecidos, uma vez que estes devem explorar especificamente os limites das
classes identificadas.

### 2.3.3. Teste Funcional Sistemático

Este critério combina os critérios Particionamento de Equivalência e Análise do Valor Limite. Uma vez que os domínios de entrada e de saída tenham sido particionados, este critério requer ao menos dois casos de teste de cada partição para minimizar o problema de que defeitos coincidentes mascarem falhas. Além disso, ele também requer a avaliação no limite de cada partição e subseqüente a ele. Para facilitar a identificação desses casos de teste, o critério fornece as seguintes diretrizes:

- 1. **Valores numéricos**:

<p style="margin-left: 5%;">
  Para o domínio de entrada, selecionar valores de entrada da seguinte forma:
</p>

<ul style="margin-left: 5%;">
<li>(a) valores discretos: testar todos os valores; e</li>
<li>(b) intervalo de valores: testar os extremos e um valor no interior do intervalo.</li>
</ul>

<p style="margin-left: 5%;">
Para o domínio de saída, selecionar valores de entrada que resultem nos valores de saída que devem ser gerados pelo software. Os tipos das saídas podem não coincidir com os tipos dos valores de entrada; por exemplo, valores de entrada distintos podem produzir um intervalo de valores de saída, dependendo de outros fatores, ou um intervalo de valores de entrada pode produzir somente um ou dois valores de saída como verdadeiro e falso. Assim, devem-se escolher como entrada valores que explorem os valores de saída da seguinte forma:
<p>

<ul style="margin-left: 5%;">
<li>(a) valores discretos: gerar cada um deles; e</li>
<li>(b) intervalo de valores: gerar cada um dos extremos e ao menos um valor no interior do intervalo.</li>
</ul>

- 2. TIpos de valores diferentes e casos especiais

<p style="margin-left: 5%;">
Tipos diferentes de valores devem ser explorados na entrada e na saída como, por exemplo, espaço em branco, que pode ser interpretado como zero em um campo numérico. Casos especiais como zero sempre devem ser selecionados individualmente, mesmo que ele esteja dentro de um intervalo de valores. O mesmo serve para valores nos limites da representação binária dos dados. Por exemplo, para campos inteiros de 16 bits, os valores -32768 e +32767 deveriam ser selecionados.
<p>

- 3. Valores ilegais

<p style="margin-left: 5%;">
Valores que correspondem a entradas ilegais também devem ser incluídos nos casos de teste, para assegurar que o software os rejeita. Deve-se também tentar gerar valores ilegais, os quais não devem ser bem-sucedidos. É importante que sejam selecionados os limites dos intervalos numéricos, tanto inferior quanto superior, valores imediatamente fora dos limites desses intervalos e também os valores imediatamente subseqüentes aos limites do intervalo e pertencentes a ele.
</p>

- 4. Números Reais
<p style="margin-left: 5%;">
Valores reais envolvem mais problemas do que valores inteiros, uma vez que, na entrada, são fornecidos como números decimais, para processamento, são armazenados na forma binária e, como saída, são convertidos em decimais novamente. Verificar o limite para números reais pode não ser exato, mas, ainda assim, essa verificação deve ser incluída como caso de teste. Deve ser definida uma margem de erro de tal forma que, se ultrapassada, então o valor pode ser considerado distinto. Além disso, devem ser selecionados números reais bem pequenos e também o zero.
</p>

- 5. Intervalos Variáveis
<p style="margin-left: 5%;">
Ocorre quando o intervalo de uma variável depende do valor de outra variável. Por exemplo, suponha que o valor da variável x pode variar de zero ao valor da variável y e que y é um inteiro positivo. Nesse caso, os seguintes dados de entrada devem ser definidos: i) x = y = 0; ii) x = 0 < y; iii) 0 < x = y; iv) 0 < x < y. Além disso, devem-se também selecionar os seguintes valores ilegais: i) y = 0 < x; ii) 0 < y < x; iii) x < 0; e iv) y < 0.
</p>

- 6. Arranjos
<p style="margin-left: 5%;">
Quando se usa arranjo, tanto como entrada como saída, deve-se considerar o fato de o tamanho do arranjo ser variável bem como de os dados serem variáveis. Os elementos do arranjo devem ser testados como se fossem variáveis comuns, como mencionado no item anterior. Além disso, o tamanho do arranjo deve ser testado com valores intermediários, com os valores mínimo e máximo. Para simplificar o teste, podem-se considerar as linhas e colunas de um arranjo como se fossem subestruturas, a serem testadas em separado. Assim, o arranjo deve ser testado primeiro como uma única estrutura, depois como uma coleção de subestruturas, e cada subestrutura deve ser testada independentemente.
</p>

- 7. Dados tipo texto ou string
<p style="margin-left: 5%;">
Neste caso o dado de entrada deve explorar comprimentos variáveis e também validar os caracteres que o compõem, pois algumas vezes os dados de entrada podem ser apenas alfabéticos, outras vezes, alfanuméricos, e algumas vezes podem possuir caracteres especiais.
</p>

Além desses casos, como foi dito inicialmente, o critério Funcional Sistemático requer que dois elementos de uma mesma classe de equivalência sejam explorados para evitar erros do seguinte tipo: suponha que o programa receba um valor de entrada e produza seu quadrado. Se o valor de entrada for 2, e o valor produzido como saída for 4, embora o resultado esteja correto, ainda assim não se pode afirmar qual das operações o programa realizou, pois poderia ser 2 ∗ 2 como também 2 + 2.

#### 2.3.3.1 Exemplo de aplicação

Como o critério Funcional Sistemático estende os critérios Particionamento de Equivalência e Análise do Valor Limite, os casos de testes definidos nas Tabelas 2.2 e 2.3 deveriam ser selecionados. Além desses, os casos de teste da Tabela 2.4 seriam também desenvolvidos.

<div align="center">
  <img src="books/eduardo_delamaro/static/tabela-2-4.png" width="700">
</div>

#### 2.3.3.2 Avaliação de Critério

Por ser baseado nos critérios Particionamento de Equivalência e Análise do Valor Limite, o critério Funcional Sistemático apresenta os mesmos problemas que estes. Entretanto, assim como o critério Análise do Valor Limite, este critério fornece diretrizes para facilitar a geração de casos de testes e enfatiza mais fortemente a seleção de mais de um caso de teste por partição e/ou limite, aumentando assim a chance de revelar os defeitos sensíveis a dados e também a probabilidade de obter uma melhor cobertura do código do produto que está sendo testado.

### 2.3.4. Grafo Causa-Efeito

Uma das limitações dos critérios anteriores é que eles não exploram combinações dos dados de entrada. Já o critério Grafo Causa-Efeito ajuda na definição de um conjunto de casos de teste que exploram ambigüidades e incompletude nas especificações. O grafo é uma linguagem formal na qual a especificação é traduzida e o processo para derivar casos de teste a partir desse critério pode ser resumido nos seguintes passos:

- 1. Dividir a especificação do software em partes, pois a construção do grafo para grandes especificações torna-se bastante complexa.
- 2. Identificar as causas e efeitos na especificação. As causas correspondem às entradas, estímulos, ou qualquer coisa que provoque uma resposta do sistema em teste e os efeitos correspondem às saídas, mudanças no estado do sistema ou qualquer resposta observável. Uma vez identificados, a cada um deve ser atribuído um único número.
- 3. Analisar a semântica da especificação e transformar em um grafo booleano – o Grafo Causa-Efeito – que liga as causas e os efeitos.
- 4. Adicionar anotações ao grafo, as quais descrevem combinações das causas e efeitos que são impossíveis devido a restrições sintáticas ou do ambiente.
- 5. Converter o grafo em uma tabela de decisão, na qual cada coluna representa um caso de teste.
- 6. Converter as colunas da tabela de decisão em casos de teste.

Considerando que cada nó do grafo pode assumir os valores 0 ou 1, que representam, respectivamente, ausência ou presença do estado, a notação utilizada no Grafo Causa-Efeito é composta dos operadores apresentados na Figura 2.1 e descritos a seguir.

- **Função identidade**: se nó “1” é 1, então nó “2” é 1; senão nó “2” é 0.
- **Função not**: se nó “1” é 1, então nó “2” é 0; senão nó “2” é 1.
- **Função or**: se nó “1” ou “2” ou “3” é 1, então nó “4” é 1; senão nó “4” é 0.
- **Função and**: se ambos nós “1” e “2” são 1, então nó “3” é 1; senão nó “3” é 0.

Para ilustrar a combinação desses operadores em um grafo, considere a especificação do programa “Imprime Mensagens”: o programa lê dois caracteres e, de acordo com eles, mensagens serão impressas da seguinte forma: o primeiro caractere deve ser um “A” ou um “B”. O segundo caractere deve ser um dígito. Nessa situação, o arquivo deve ser atualizado. Se o primeiro caractere é incorreto, enviar a mensagem X. Se o segundo caractere é incorreto,
enviar a mensagem Y.

As causas são:

- 1 - caractere na coluna 1 é “A”;
- 2 - caractere na coluna 1 é “B”;
- 3 - caractere na coluna 2 é um dígito.

Os efeitos são:
- 70 - a atualização é realizada;
- 71 - a mensagem X é enviada;
- 72 - a mensagem Y é enviada.

O Grafo Causa-Efeito correspondente é apresentado na Figura 2.2. Para verificar se ele corresponde à especificação basta atribuir os possíveis valores 0 e 1 às causas e observar se os efeitos assumem os valores corretos.

Apesar de o grafo da Figura 2.2 corresponder ao exemplo, ele contém uma combinação de causas que é impossível de ocorrer, uma vez que “1” e “2” não podem possuir o valor 1 simultaneamente. Esta e outras situações ocorrem comumente na prática. Para contornar esses problemas a notação da Figura 2.3 pode ser utilizada, sendo que elas representam o seguinte:

<div align="center">
  <img src="books/eduardo_delamaro/static/figura-2-2.png" width="700">
</div>

<div align="center">
  <img src="books/eduardo_delamaro/static/figura-2-3.png" width="700">
</div>

* Restrição E: no máximo um entre “1” e “2” pode ser igual a 1 (ou seja, “1” e “2” não podem ser 1 simultaneamente).
* Restrição I: no mínimo um entre “1”, “2” e “3” deve ser igual a 1 (ou seja, “1”, “2” e “3” não podem ser 0 simultaneamente).
* Restrição O: um e somente um entre “1” e “2” deve ser igual a 1.
* Restrição R: para que “1” seja igual a 1, “2” deve ser igual a 1 (ou seja, é impossível que “1” seja 1 se “2” for 0).
* Restrição M: se o efeito “1” é 1 o efeito “2” é forçado a ser 0.

Assim, considerando a representação dessas restrições e considerando também ser impossível que as causas “1” e “2” estejam presentes simultaneamente, mas que é possível ambas não estarem presentes, o grafo da Figura 2.2 é refeito para denotar essa situação e é apresentado na Figura 2.4.

<div align="center">
  <img src="books/eduardo_delamaro/static/figura-2-4.png" width="700">
</div>

- 1. Quando a nó for do tipo OR e a saída deva ser 1, nunca atribuir mais de uma entrada com valor 1 simultaneamente. O objetivo disso é evitar que alguns erros não sejam detectados pelo fato de uma causa mascarar outra.
2. Quando o nó for do tipo AND e a saída deva ser 0, todas as combinações de entrada que levem à saída 0 devem ser enumeradas. No entanto, se a situação é tal que uma entrada é 0 e uma ou mais das outras entradas é 1, não é necessário enumerar todas as condições em que as outras entradas sejam iguais a 1.
3. Quando o nó for do tipo AND e a saída deva ser 0, somente uma condição em que todas as entradas sejam 0 precisa ser enumerada. (Se esse AND estiver no meio do grafo, de forma que suas entradas estejam vindo de outros nós intermediários, pode ocorrer um número excessivamente grande de situações nas quais todas as entradas sejam 0.)

Seguindo essas diretrizes, a tabela de decisão para o grafo apresentado na Figura 2.4 é apresentada na Figura 2.5.

<div align="center">
  <img src="books/eduardo_delamaro/static/figura-2-5.png" width="700">
</div>

O passo final é converter cada coluna da tabela de decisão em um caso de teste, como será visto no exemplo a seguir.

#### 2.3.4.1 Exemplo de Aplicação

Considerando-se a especificação do programa “Cadeia de Caracteres” que vem sendo usada para exemplificar os critérios anteriores, podem ser identificadas as seguintes causas:
- 1. inteiro positivo no intervalo 1-20;
- 2. caractere a ser procurado na cadeia;
- 3. procurar outro caractere.
  
e os seguintes efeitos:

- 1.  inteiro fora do intervalo;
- 2.  posição do caractere na cadeia;
- 3.  caractere não encontrado;
- 4.  término do programa.

O Grafo Causa-Efeito desse exemplo é apresentado na Figura 2.5, e a respectiva tabela de decisão, na Figura 2.6.

Agora, transformam-se as informações extraídas da tabela de decisão em casos de teste, que estão apresentados na Tabela 2.5. Por exemplo, o 0 na causa 1, na primeira coluna, significa que um inteiro positivo no intervalo 1-20 não está presente, ou seja, o valor de T deve ser diferente de um inteiro nesse intervalo, e assim por diante.

<div align="center">
  <img src="books/eduardo_delamaro/static/tabela-2-5.png" width="700">
</div>

<div align="center">
  <img src="books/eduardo_delamaro/static/figura-2-6.png" width="700">
</div>

<div align="center">
  <img src="books/eduardo_delamaro/static/figura-2-7.png" width="700">
</div>

#### 2.3.4.2 Avaliação do Critério

A vantagem do Grafo Causa-Efeito é que esse critério exercita combinações de dados de teste que, possivelmente, não seriam considerados. Além disso, os resultados esperados são produzidos como parte do processo de criação do teste, ou seja, eles fazem parte da própria tabela de decisão. As dificuldades do critério estão na complexidade em se desenvolver o grafo booleano, caso o número de causas e efeitos seja muito grande, e também na conversão do grafo na tabela de decisão, embora esse processo seja algorítmico e existam ferramentas de auxílio. Uma possível solução para isso é tentar identificar subproblemas e desenvolver subgrafos Causa-Efeito para eles. A eficiência desse critério, assim como os outros critérios funcionais, depende da qualidade da especificação, para que sejam identificadas as causas e os efeitos e, também, da habilidade e experiência do testador. Uma especificação muito detalhada pode levar a um grande número de causas e efeitos e, por outro lado, uma especificação muito abstrata pode não gerar dados de teste significativos.


### 2.3.5. Error Guessing

Essa técnica corresponde a uma abordagem ad-hoc na qual a pessoa pratica, inconscientemente, uma técnica para projeto de casos de teste, supondo por intuição e experiência alguns tipos prováveis de erros e, a partir disso, definem-se casos de teste que poderiam detectálos. A idéia do critério é enumerar possíveis erros ou situações propensas a erros e então definir casos de teste para explorá-las. Por exemplo, se o que está sendo testado é um módulo de ordenação, as seguintes situações poderiam ser exploradas: 
- i) uma lista de entrada vazia; 
- ii) uma lista com apenas uma entrada; 
- iii) todas as entradas com o mesmo valor; e 
- iv) uma lista de entrada já ordenada.

## 2.4. Considerações Finais

Uma vantagem dos critérios da técnica funcional é que eles requerem somente a especificação do produto para derivar os requisitos de teste, podendo, dessa forma, ser aplicados indistintamente a qualquer programa, seja ele procedimental ou orientado a objetos, ou a componentes de software, uma vez que o código fonte não é necessário. Por outro lado, segundo Roper, como os critérios funcionais se baseiam apenas na especificação, eles não podem assegurar que partes críticas e essenciais do código tenham sido cobertas.

Além disso, os próprios critérios apresentam algumas limitações, como já foi comentado anteriormente. Embora se espere, por exemplo, que os elementos de uma mesma classe de equivalência se comportem da mesma maneira, na prática isso pode não ocorrer. Dessa forma, é fundamental que as técnicas de teste sejam entendidas como complementares e sejam utilizadas em conjunto para que o software seja explorado de diferentes pontos de vista.

Para ilustrar esse fato, o exemplo utilizado neste capítulo foi implementado em C e os casos de teste gerados para atender os critérios funcionais foram usados para avaliar a cobertura em relação ao critério Análise de Mutantes, o qual será apresentado no Capítulo 5. Essa avaliação foi realizada utilizando-se a ferramenta Proteum e os casos de teste foram explorados de duas maneiras diferentes: isoladamente, isto é, calculou-se o escore de mutação em relação à aplicação de cada conjunto de casos de teste funcional e calculou-se o escore de mutação adicionando-se ao conjunto de casos de teste de um dos critérios os casos de teste adequados a outro critério funcional, de forma cumulativa. Na Tabela 2.6 apresentam-se esses dados. Foi gerado um total de 863 mutantes, dos quais 66 são equivalentes. Recomenda-se que, após a leitura do Capítulo 5, o leitor volte a avaliar esses resultados.

<div align="center">
  <img src="books/eduardo_delamaro/static/tabela-2-6.png" width="700">
</div>

Aplicando-se os conjuntos de casos de teste separadamente, o menos efetivo para distinguir os mutantes foi o conjunto do critério Grafo Causa-Efeito, enquanto de forma cumulativa o menos efetivo foi o do Particionamento de Equivalência. Independentemente da forma de aplicação, o mais efetivo foi o conjunto gerado a partir do Teste Sistemático, como era de se esperar, visto que ele foi proposto justamente com a intenção de melhorar a cobertura conseguida com conjuntos de teste funcionais em relação às outras técnicas de teste.

