#### Acerto, Taxa de Acerto, Tempo de acerto

* Conceito relacionado à memória cache

* Acerto é um conceito apresentado no capítulo de hierarquia de memória. Ocorre quando um dado requisitado é encontrado no bloco de memória mais próximo do dispositivo requisitante. Por exemplo, se a cache L1 requere um dado da cache L2 ocorre um acerto entre os dois blocos, por mais que tenha ocorrido uma falha anteriormente entre a CPU e a cache L1.

* A taxa de acerto é uma fração definida pela quantidade de acertos sobre a quantidade requisições em um certo período.

* Tempo de acerto é o tempo necessário para o dispositivo requisitado retornar o dado pedido. 

#### Amdahl Gene

* Projetista de computadores conhecido pela Lei de Amdahl. Argumento este que define a máxima melhora esperada para um sistema em geral quando somente uma única parte do sistema é melhorada.

#### Banco de Registradores

* Conceito relacionado à caminho de dados

* Componente digital composto por um conjunto de registradores que podem ser acessados de forma organizada. Pode ser realizados operações de escrita e leitura.

#### Barramento Assíncrono

* Conceito relacionado à barramentos

* Link de comunicação compartilhada entre dispositivos independente de sinal de clock. Geralmente, estes barramentos adotam o protocolo de handshaking, onde os dois dispositivos trocam sinais informando o seu estado atual.

#### Barramento Síncrono

* Conceito relacionado à barramentos

* Link de comunicação compartilhada entre dispositivos que depende de um sinal de clock

#### Barramentos

* Barramentos é um link de comunicação compartilhada, que utiliza um conjunto de fios para conectar diversos dispositivos de um computador.

* Um barramento em geral contém um conjunto de linhas de controle e um conjunto de linhas de dados. As linhas de controle são usadas para sinalizar solicitações e confirmações, além de indiciar o tipo de informação que se encontra nas linhas de dados. Já as linhas de dados transportão as informações entre a origem e o destino.

#### Big Endian

* Conceito relacionado à memória primária.

* Conceito relacionado à ordenação dos bytes em uma palavra. A organização em que os dados são escritos do bit mais significativo para o menos significativo é chamado de Big Endian. O MIPS32 é Big Endian.

#### Bit de Sinal

* Conceito relacionado à aritmética computacional.

* O bit de sinal é usado na representação binária em que o bit mais significativo é reservado determinar se o valor é positivo ou negativo. A principal desvantagem dessa representação é que o valor 0 pode ser definido como +0 e -0, o que pode ocasionar problemas.

#### Bit de modificação

* Conceito relacionado à memória cache.

* Uma vez que os dispositivos de memória estão divididos em várias camadas hierarquicas, sempre que ocorre uma escrita em uma dessas camadas, ocorre uma inconsistência, isto é, para um mesmo endereço há informações difirentes nos blocos de memória.

* Uma maneira de resolver esse estado inconsistênte é o esquema write-back, onde os endereços escritos são perpetuados na memória somente quando o block onde está localizado será substituido.

* A maneira de determinar se um endereço foi ou não foi escrito é através de um bit de modificação que indica que aquele bloco precisa ser perpetuado na memória.

#### Bit de referência ou Bit de uso

* Conceito relacionado à memória virtual.

* O bit de referência é um modo simples de implementar o esquema LRU (Last Recently Used).

* O esquema LRU segue o princípio que a página que à mais tempo não foi utilizada, tem a menor probabilidade de ser usada. Assim, sempre que a memória estiver cheia e for preciso desalocar um processo é selecionada a página de menor probabilidade de uso.

* Manter o esquema LRU é caro computacionalmente pois demanda atualizar uma estrutra de dado a cada referência à memória. Assim uma maneira de estimar o esquema LRU é reservar um bit de uso para todos as páginas.

* Sempre que essa página for referênciada, esse bit é ligado. Assim quando for preciso desalocar uma página é procurado a primeira página com bit desligado.

* De tempos em tempos o sistema operacional desliga o bit de todos as páginas. Assim simulando o esquema LRU.

#### Bit de validade

* Conceito relacionado à memória virtual.

* O bit de validade é utilizado em dispositivos de memória que implementa o conceito das caches, isso é, manter blocos de memórias que provavelmente serão usados nas futuras instruções.

* Durante a pesquisa de um determinado endereço de memória, partindo dos dispositivos de memória de maior hierarquia para o de menor hierarquia. Pode ocorrer de a posição procurada no dispositivo de memória conter lixo de memória, assim sendo necessário de um bit de validade que sinaliza que aquele endereço encontrado foi carregado da memória previamente.

* O processo de verificação de validade em um dispositivo de memória que utiliza os conceitos de cache com mapeamento direto, segue os seguintes passos: 

	1. O endereço desejado é dividido em 3 partes: n bits para o offset  que distingue duas words, log2(q) bits para encontrar o indice no dispostivo de memória, onde q é a quantidade de de words que o dispositivo de memória pode armazernar e (t - q - n) bits para tag.

	2. Assim, em uma cache capaz de armazenar 1024 words, onde o tamanho de word é de 32 bits, será preciso de 10 bits (log2(1024)) para encontrar a posição na cache onde possivelmente estará o endereço desejado e 2 bits para distinguir 2 words. Logo 32 - 10 - = 20 bits para tag.

	3. Quando um endereço é procurado, o endereço é desmembrado seguindo a divisão acima, e os bits de index são usados para encontrar uma posição na cache. Após encontrar a posição na cache é preciso verificar se essa posição possui alguma informação válida. Esta verificação é feita usando o bit de validade.

	4. Se o bit de validade estiver desligado é preciso buscar o endereço na hierarquia de memória inferior, se estiver ligado é preciso completar as outras etapas de verificação.

#### Bloco

* Conceito relacionado à hierarquia de memória

* Os blocos são um conjunto de dados que contem 2 ou mais words. Os blocos é uma maneira de utilizar o conceito de proximidade espacial, onde as introções que estão próximas na memória tem maior probabilidade de ser referenciadas nas próximas instruções.

* Assim sempre que um endereço de memória é carregado nos dispositivos de memória, é carregado um bloco de memória que contém o endereço desejado.

#### Buffer de Escrita

* Conceito relacionado à hierarquia de memória.

* O buffer de escrita é um método de melhorar o desempenho do método write-through.

* O método write-through é uma maneira de corrigir o estado inconsistente entre a cache e a memória, onde para um mesmo endereço há duas informações diferêntes.

* Uma maneira de melhorar o desempenho desse método é utilizar um buffer de escrita, onde os dados dos endereços alterados são mantidos até que o buffer estiver cheio.

#### Buffer de Quadros

* O buffer de quadrados está relacionado ao modo que o computador representa os pixels de um monitor.

* É reservado uma área na memória onde é mapeado os pixels que serão projetados no monitor. Essa área é atualizada de tempos em tempos, e cada atualização é chamada de um quadro de imagem novo. Assim é mantido um buffer de quadros das próximas atualizações para não gerar um gargalo entre a atualização e o processamento das imagens.

#### Bypassing / Forward

* Conceito relacionado à pipelining.

* A técnica bypassing é utilizada para minimizar os perdas de desempenho ocasinadas por hazards de dados.

* Hazards de dados ocorrem quando uma instrução que está no pipeline depende do resultado de uma instrução anterior ainda não finalizada. 

* Um exemplo é um **add $t1, $t2, $t3** seguido por uma instrução que usa o valor em $t1. Sem o bypassing seria preciso esperar o novo valor de $t1 ser salvo no banco de registradores antes de ser utilizado.

* O bypassing é baseado no fato a informação desenada, no caso acima o **$t2 + $t3** está disponível antes de da instrução ser finalizada. Assim sendo possível "passar pra frente" a informação e dar andamento ao pipelining.
 
#### CPI

* Conceito relacionado à análise de desempenho

* CPI significa ciclos de clock por instrução. (Clock cycles per Instruction).

* É a razão do número de ciclos necessários para um programa pela número de instrução do mesmo programa.

#### Cache

* Conceito relacionado à hierarquia de memória

* A memória possui um trade-off muito peculiar. Memórias com grande capacidade de armazenamento são lentas enquanto memórias rápidas possui baixa capacidade de armazenamento. A relação custo x velocidade é linearmente proporcional, ou seja, quanto mais rápido mais caro.

* O acesso à memória (RAM e disco) sempre foi um enorme gargalo pois a velocidade de CPU evoluiu com o tempo exponêncialmente enquanto a velocidade da memória evoluiu linearmente.

* Desse modo os projetista de computadores desenvolveram as memórias caches, que criam uma ilusão de uma memória rápida e barata, mantendo os custos razoáveis.

* A memória cache é um dispositivo de memória que armazena blocos de memórias que contém endereços de memórias que foram referenciados recentemente.

* O armazenamento desses blocos permitem a aplicação dos conceitos de localidade temporal e localidade espacial.

* Localidade temporal: Endereços referenciados recentemente tem maior chance de serem referenciados novamente. Lembre-se que em loops (do, while, for) há um conjunto de endereços que são referenciados repetida vezes.

* Localidade espacial: Endereços próximos do endereços referenciados recentemente tem maior chance de serem referenciados. Lembre-se que as instruções de um programa é sequêncial, ou seja, se você acabou de 'carregar' uma instrução, as próximas provavelmente serão referenciadas em seguida. (Lembre-se que em if e chamada de funções há pulos no corpo do programa).

* A memória cache possui uma capacidade de memória reduzida comparada com a memória principal, e possui uma velocidade de acesso significativamente maior que as demais memórias (2º dispositivo de memória mais rápido, o primeiro é os registradores).

* Assim, sempre que um endereço é referenciado é a memória cache é verificada. Se não possuir aquele endereço, é necessário 'pagar' o preço de acessar esse endereço na memória principal. Porém para cada falha (quando o endereço não está na cache), as chances de os pŕóximos endereços estarem na cache aumentam, devido aos conceitos de localidade temporal e espacial.

#### Cache associativa por conjunto

* Conceito relacionado á hierarquia de memória.

* O projeto da memória cache pode armazenar os blocos de memória de diferentes maneiras. Uma delas é por associatividade.

* Nesse modelo, o bloco resgatado da memória principal deve ser 'estacionado' em alguma posição da memória cache. Essa posição está relacionado aos endereços que aquele bloco contém.

* Os bits mais significativos do bloco de endereço são compartilhados, isso é possível por conta da localidade espacial. Por exemplo, imagine um bloco que contém 4 endereços. Assim os endereços 0xFF00, 0xFF02, 0xFF04, 0xFF06, estariam todos no mesmo bloco, e esse bloco possui em comum os bit 'FF'. Esse bloco estaria associado ao endereço 'FF'(256) da memória cache.

* Mas imagine que quando a cache foi armazenar esse novo bloco, essa posição já estava ocupada, pelo bloco (0xFF0A, 0xFF0C, 0xFF0E, 0xFF0F), bloco esse que também contém como endereço base 'FF'. Assim seria necessário sobrescrever esse bloco com a nova informação.

* Porém se esse bloco sobrescrevido estava na memória cache, as chances dele ser novamente necessários são altas, mas como ele foi sobrescrevido será necessário 'pagar' o preço de busca-lo novamente na memória princial.

* Uma maneira de resolver essa disputa por um endereço na memória cache é permitir que um conjunto de blocos seja associado à um mesmo endereço da cache. Assim quando um novo bloco precisar se transferido para cache é realizado uma busca conjuntos reservados para os blocos para encontrar um espaço dispónível. Conceito relacionado à hash encadeamento.

* Quando é reservado n conjuntos para blocos em um mesmo endereço da cache, é chamado Cache associativa por conjuto de n vias.

* A principal vantagem dessa abordagem é que a quantidade de blocos sobrescritos por conflito de posição diminuem. Já a principal desvantagem é que agora é preciso percorrer os n conjutos de um endereço da cache para encontrar o bloco com o endereço desejado.

#### Cache totalmente associativa

* Seguindo o conceito de tóṕico anteior. Em um caso extremo, onde há 1 conjunto que pode conter qualquer bloco de memória, isso é, não é preciso utilizar os bits mais significativos do bloco para encontrar a posição associativa na cache, uma vez que qualquer posição pode armazenar qualquer bloco.

* Assim sempre que um novo bloco precisa ser salvo na memória é feito uma travessia nos endereços de memória da cache para encontrar um 'espaço' livre.

* A vantagem dessa abordagem é que acaba os conflitos por endereços. A desvantagem é que para qualquer endereço desejado é preciso percorrer a cache para encontrar o bloco com o endereço procurado.

* Logo, em um caso em que a cache está cheia e o endereço procurado não está na cache, será preciso percorrer todos os endereços da cache para chegar à conclusão que o bloco não está presente. (No caso de uma cache não cheia, a travessia terminaria no primeiro espaço vazio).

#### Caminho de dados

* Conceito relacionado ao funcionamento do processador.

* Um processador executa 3 tarefas principais: busca(fetch), decodificação(decode) e execução de instruções.

* Para que uma instrução seja executada é preciso que antes esta seja decodificada e para ser decoficada é preciso que antes seja encontrada na memória.

* Assim é preciso que os resultados de cada uma dessas tarefas sejam enviados por a etapa seguinte. Assim é preciso de um circuito de caminho de dados no processador.

* A organização do circuito do caminho de dados depende de como a CPU foi projetada. Uma CPU ciclo único possui um caminho de dados diferente de uma CPU com pipeline.

* Em uma CPU ciclo único, o caminho de dado seguiria as seguintes etapas. Vamos supor que o contador de programa (registrador que mantém o endereço dá próxima instrução) tenha armazenado o endereço 0xABCDEF12. Esse valor é enviado para 2 locais, a memória de instruções e para o somador que irá calcular o próximo endereço (PC + 4) (cada instrução está à 4 bytes da próxima).

* Assim é preciso de um caminho de dados para esses 2 locais. Como esse dado precisa de 32 bits para ser representado, caminho de dados precisa ter o mesmo tamanho.

* [FETCH] O somador irá retornar o PC+4 e será salvo no PC (camimho de dado para o PC de 32 bits).

* [FETCH] A memória de instrução irá buscar o valor armazenado no endereço, suponha que a instrução retornada seja "add $t1, $t2, $t3".

* [DECODE] Essa instrução é do tipo R, logo é preciso decompor essa instrução em opcode(6 bits), rs(5 bits), rt(5 bits), rd(5 bits), shamt(5 bits) e funct(6 bits). Cada parte dessa decomposição irá para diferentes dispositivos através do caminho de dados.

* [DECODE] Os 6 bits do opcode vão para à elípse de controle, dispositivo que encaminha sinais de controle para outros dispositivos.

* [DECODE] Os 15 bits do rs, rt e rd vão para o bloco de registradores, onde serão usados para selecionar os respectivos registradores. Por exemplo, na instrução "**add $t1, $t2, $t3**",  **rd = $t1**, **rs = $t2**, **rt = $t3**. $t1 está associado ao valor binário 01001 (9 em decimal) que irá resgatar o 9° registrador do banco de registradores. Todos os registradores estão associados a valores decimais de 0 à 31. (Logo nosso banco de registradores contém 32 registradores).

* [DECODE] Nesse caso os 5 bits de shamt estão zerados. Esses bits são usados em operações de deslocamento de bits.

* [DECODE] Já os 6 bits de funct são passados para o dispositivo de controle da ULA. Esse dispositivo irá definir qual operação à ULA irá realizar com os valores contidos em rs e rt.

* [DECODE] A saída do banco de registradores são os valor contido nos registadores referenciados pelos rs, rt. Os valores são passados pelo caminho de dados que conecta o banco de registradores e a ULA.

* [EXECUTE] A ULA já com os operandos e com a operação definida(sinais enviados pela diispositivo de controle da ULA) realiza a operação e disponibiliza os dados no caminho de dados que conecta a saída da ULA com a entrada do Banco de Registradores. O banco de registradores usa os 5 bits do rd para selecionar qual registrador será salvo esses dados. Finalizando assim a instrução.

#### Ciclos de Clock

* Conceito relacionado à Avaliação do Desempenho

* Em circuitos digitais síncronos, no nosso caso a CPU, os componentes do circuito operam 'reagindo' à sinais de relógios. Esses sinais de relógios oscilam entre 0 e 1, geralmente 50% do tempo em 0 e 50% do tempo em 1, gerando assim uma onda quadrada. Esses componentes que são coordenados pelos sinais de relógios usam o borda de decida ou de subida (intervalo onde o sinal passa de 0-1 ou 1-0) para receber modificações de estado e o restante do ciclo para perpetuar as modificações em seus circuitos internos.

* Como esses dispositivos só reagem durante essas variações de estado (subida ou decida), há um limite de operações que podem ser realizadas, diretamente relacionada à frequência do ciclo de cloco (tempo necessário para ir de uma borda de subida à próxima borda de subida).

* Assim fica definido como ciclo de clock a quantidade de ciclos decorridos em 1 segundo. Por exemplo, se a frequência de um sinal de relógio é de 0.5ns (5 * 10-9 segundos), o a razão 1/0.5ns define o cliclo de clock como 2Ghz, ou seja, 2 bilhoes de instruções por segundo.

#### Compiladores

* Conceito relacionado à Linguagem de Máquina

* Os sistemas eletrônicos foram desenvolvidos com base em sinais elétricos, os sinais mais fáceis de serem distinguidos é desligado(0) e ligado. Por tanto se você quer que um sistema eletrônico realize uma tarefa com base em comandos, esses comandos devem está codificados na base binária.

* Quando os computadores foram desenvolvidos os processadores foram projetados para serem de propósito geral, onde havia um conjunto de operações lógicas e aritméticas nativas que combinadas poderiam realizar diversas tarefas.

* Assim se você quisesse que um processador realize uma soma de A com B você deveria enviar um sinal parecido com esse **1000110010100000**. Os primeiros programadores deviam decorar essas sequências, uma vez que não é intuitivo, para codificar suas aplicações.

* Com o tempo os projetistas perceberam que não havia necessidade de decorar essas sequência, então eles escreveram um programa (usando os comandos binários) que iria receber palavras e iria realizar essa tradução antes de enviar para o compilador. Assim se você executasse o comando **add A, B**, esse programa chamado assembler iria traduzir o add -> 110010, A -> 110010 e o B -> 100000 e no final você teria o mesmo resultado.

* Essa abstração permitiu que os programadores desenvolvesse aplicações mais rapidamente e com menos erros. Essa linguagem nova foi batizada de **assembly**.

* Porém esses novos comandos da linguagem assembly estão diretamente ligados com as operações que o processador já realizava. Eles só foram abstraidos para um sintaxe nova. Mas imagine que você durante a criação de um programa esteja escrevendo várias procedimentos para calcular o fatorial de um número. Você até sabe como realizar esse procedimento com várias multiplicações e subtrações (operações suportadas pelo processador), mas você acha que seria bem melhor se existisse um comando **fat A**.

* Agora temos um problema, pois o processador não foi projetado para suportar esse comando. E projetar um novo processador para realizar essa operação envolve custos financeiros altos.

* Uma solução seria criar um programa que iria intermediar todo comando antes de passar pelo processador. Se esse novo programa encontrasse o comando **fat A**, ele iria substituir esse comando por uma sequência de operações mais simples (mult e sub) que iria calcular o resultado desejado. Assim resolvendo o problema. Esse programa é batizado de **compilador**

* Um problema ainda mais grave que os compiladores resolve é a questão da portabilidade de programas entre processadores de arquiteturas diferentes. Imagine que você escreva um programa com mais de 10 mil linhas e que te tenha custado tempo e dinheiro. Você usou como base as comandos assembly de um processador da Xuxa, que possui comandos diferentes dos processadores da Pelé. Mas com o tempo os processadores da Xuxa cai em desuso e o do Pelé se torna líder de mercado. Você terá que reescrever seu programa, agora utilizando os comandos do processador do Pelé.

* Uma solução para esse problema é desenvolver um compilador que irá compilar os comandos para os diferentes assembly. Ou seja, você irá utilizar os comandos que o compilador conhece e ele que irá ter o trabalho de descobrir qual a arquitetura do processador para criar o assemby certo. Observe que o programa do compilador ainda sim terá que ser escrito para diferentes processadores.

#### Computadores embutidos

* Conceito relacionado à tecnologias computacionais.

* Existem várias classes de aplicações de computadores. As principais são **computadores desktop**, **servidores** e os **computadores embutidos**. Os computadores embutidos representam a maior classe de computadores e abrange a faixa mais ampla de aplicações e desempenho. Os computadores embutidos incluem os microprocessadores dos eletrodomésticos, carros, máquinas, video-games, aviões e muito outros dipostivos em que utilizam o processamento dos computadores para executar uma determinada tarefa (contar o tempo do microondas, ativar o freio de um carro, reproduzir o conteudo de um cd, controlar maquinários).

* Esses computadores embutidos possuem necessidades específicas que combinam um desempenho mínimo com rígidas limitações de custo, memória e potência. (Se um microondas custar o preço de computador, gastar muita energia provavelmente não será um bom produto).

* Esses processadores embutidos não são fácilmente reprogramáveis. Não há uma interface, nem compiladores e tradutores para que novas aplicações sejam implementados. E convenhamos, um usuário comum não tem interese em modificar o funcionamento do microondas. E no caso extremo não seria interessante deixar que qualquer pessoa modifique o programa que controla as turbinas do avião durante o voo.

#### Conjunto de instruções

#### Contador de Programa

#### Controle

#### Código de correção de erro

#### Código de detecção de erro

#### Código de função

#### Código de máquina

#### Decodificação de Instruções

#### Delayed Branch

#### Desvio

#### Desvio condicionais

#### Desvio incondicionais

#### Detecção de Dependência

#### E/S

#### Endereçamento de base

#### Endereçamento de deslocamento

#### Endereçamento em registrador

#### Endereçamento imediato

#### Endereço Virtual

#### Especulação

#### Exceções

#### Extensão de Sinal

#### Falha

#### Falta de página

#### Fowarding

#### Grupo de instruções

#### Half Word

#### Hazards de controle

#### Hazards de dados

#### Hazards de desvio

#### Hazards de desvios não tomados

#### Hazards estruturais

#### Heap

#### Hierarquia de Memória

#### Implementação ciclo único

#### Implementação multiciclo

#### Instruções do tipo I

#### Instruções do tipo J

#### Instruções do tipo R

#### Jump

#### Jump and link

#### Jump register

#### Latência

#### Latência de instrução

#### Little Endian

#### Lógica de Controle

#### MIPS

#### Memória Cache

#### Memória Primária

#### Memória Principal

#### Memória Secundária

#### Memória Virtual

#### Memória não volátil

#### Microarquitetura

#### Microcódigo

#### Microinstruções

#### Microprogramação

#### Máquinas de estados finitos

#### Número de página física

#### Número de páginas virtual

#### Offset 

#### Offset de página

#### Operação de entrada

#### Operação de saída

#### Pipeline

#### Pipelining

#### Previsão de desvio

#### RAID (Redudant Arrays of Inexprensive Disk)

#### RISC (Reduced Instruction Set Computer)

#### Random Access Memory (RAM)

#### Registrador

#### SWAP

#### Segmento de Texto

#### Segmento de dados

#### Sinais de controle

#### Sistema Operacional

#### Stalls

#### Static Random Access Memory (SRAM)

#### Tabela de Páginas

#### Tags

#### Tempo de CPU do sistema

#### Tempo de CPU do usuário

#### TLB (Transformation-lookaside buffer)

#### Unidade de controle

#### Word

#### Write-Arround

#### Write-Back

#### Write-Through

#### Opcode

#### Página de memória