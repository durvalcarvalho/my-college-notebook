# Capítulo 3

# Requisitos

> The hardest single part of building a software system is deciding precisely what to build. – Frederick Brooks

## Introdução

Requisitos definem o que um sistema deve fazer e sob quais restrições. Requisitos relacionados com a primeira parte dessa definição - "O que um sistema deve fazer", ou seja, suas funcionalidades - são chamaos de **Requisitos Funcionais**. Já os requisitos relacionados com a seguinda parte - "Sob que restrições" - são chamados de **Requisitos Não-Funcionais**.

Como expresso por Frederick Brooks, a definição dos requisitos é uma etapa crucial da construção de qualquer sistema de software. De nada adianta ter um sistema com o melhor design, implementado na mais moderna linguagem, usando o melhor processo de desenvolvimento, com alta cobertura de testes, etc. se ele não atende às necessidades de seus usuários. 

Problemas na especificação de requisitos tem um custo alto. Eles podem requerer trabalho extra, quando se descobre - após o sistema fica pronto, no melhor dos cenários e pode acarretar na falha do projeto no caso que os usuários rejeitam o software por não atender a suas necessidades.

## Representação de Requisitos

Os requistios funcionais, na maioria das vezes, são especificados em linguagem natural. Por outro lado, requistios não-funcionais são especificados de forma quantitativa usando métricas.

| Requisito Não-Funcional | Métrica |
| ----------------------- | ------- |
| Desempenho              | Transações por segundo, tempo de resposta, latência, vazão |
| Espaço                  | Uso de disco, RAM, cache |
| Confiabilidade          | % de disponibilidade, tempo médio entre falhas (MTBF) |
| Robustez                | Tempo para recuperar o sistema após uma falha (MTTR); probabilidade de perda de dados após uma falha |
| Usabilidade             | Tempo de treinamento de usuários |
| Portabilidade           | % de linhas de código portáveis |


A utilização de métricas evita especificações genérias, como "O sistema deve ser rápido e ter alta disponibilidade". Em vez disso, é preferível definir que o sistema deve ter 99.99% de disponibilidade e que 99% de todas as transações realizadas em qualquer janela de 5 minutos devem ter um tempo de resposta máximo de 1 segundo.

Alguns autores, como Ian Sommerville, também classificam os requisitos em **requisitos de usuário** e **requisitos de sistema**. Requisitos de usuários são de mais alto nível, escritos por usuários, normalmente em linguagem natural e sem entrar em detalhes técnicos. Já requisitos de sistema são técnicos, precisos e escritos pelos próprios desenvolvedores. Normalmente, um requisito de usuário é expandido em um conjunto de requisitos de sistema.

Suponha, por exemplo, um sistema bancário. Um requisitos de usuário - especificado pelos funcionarios do banco - pode ser o seguinte: 

> O sistema deve permitir transferências de valores para uma conta corrente de outro branco, por meio de TEDs

Esse requisito dá origem a um conjunto de requisitos de sistema, os quais vão detalhar e especificar o protocolo a ser utilizado para realizar tais transferências, os limites de valores passíveis de ser transferido, as exceções caso a conta de origem não tenha saldo etc. Portanto, requisitos de usuários estão mais próximo do problema, enquanto que requisitos de sistema estão mais próximo da solução.

## Engenharia de requisitos

Engenharia de Requisito é o nome que se dá ao conjunto de atividades relacionadas com a descoberta, análise, especificação e manutenção dos requisitos de um sistema. O termo "engenharia" é usado para reforçar que essas atividades devem ser realizadas de modo sistemático, ao longo de todo o ciclo de vida de um sistema e, sempre que possível, valendo-se de técnicas bem definidas.

## Elicitação de Requisito

As atividades relacionadas com a descoberta e entendimento dos requisitos de um sistema são chamadas **Elicitação de Requisito**. No nosso contexto, o termo **elicitação** faz referências os resultados das diversas interações entre stakeholders e projetista, que resultam nos principais requisitos do sistema que se pretende construtir.

Existem diversas técnicas para realizar a atividade de elicitação de requisitos, sendo algumas delas:
- a) entrevistas com stakeholders;
- b) aplicação de questionários;
- c) leitura de documentos;
- d) documento de contratação da organização que está contratando serviço de desenvolvimento;
- e) realização de workshops com os usuários;
- f) Utilização de protótipos;
- g) Análise de cenários de uso.
- h) Estudos etnográficos (passar um tempo no lugar do usuário)

Após a elicitação, os requisitos encontrados devem ser:
- 1) Documentados
- 2) Verificados e Validados (V&V)
- 3) Priorizados

## Documentação de Requisito

Cada ciclo de vida define suas própria atividades de documentação, V&V e Priorização, no caso do desenvolvimento ágil, a documentação de requisitos é feito de forma simplificada, por meio de **histórias de usuários**. 

Por outro lado, há projetos e ciclos de vida que exigem uma documentação formal e completa, - o **Documento de Especificação de Requisito** - onde será especificado todos os requisitos que o sistema deve possuir.

## Verificação e Validação de Requisito

Após a especificação, os requisios devem ser verificados e validados. O objetivo dessa atividade é reduzir a quantidade de erros nos artefatos de requisitos, para assim aumentar as chances do software atender as necessidades dos usuários.

O artefato que especifica os requisitos deve ser **corretos**, **precisos**, **completos**, **consistentes** e **verificáveis**.

- Os requisitos devem estar **corretos**. Um contra-exemplo é a especificação incorreta da fórmula de abatimento de impostos e um sistema de contabilidade. Evidentemente, uma imprecisão em um requisito pode acarretar na rejeição do software por seus clientes.
- Os requisitos devem ser **precisos**, isso é, não devem ser ambíguos. A especificação de um requisito não deve permitir mais de uma interpretação. Considere a o seguinte requisito: "O aluno receberá aprovação se tirar +70 pontos no exame A ou +70 pontos no exame B e ter +30 presenças". Nesse caso podemos interpretar o requisito de duas maneiras: 1. O aluno será aprovado quando (+70 no exame A) ou (+70 no exame B e +30 presenças); 2. O aluno será aprovado quando (+70 no exampe A ou +70 pontos no exame B) e +30 presenças.
- O artefato de requisitos devem ser **completo**. Isto é, não podemos esquecer de especificar certos requisitos, principalmente se eles forem importantes para o sistema.
- O artefato de requisito deve ser **consistente**. Não deve haver requistios que contradizem um ao outro. Um contra-exemplo ocorre quando um usuário diz que o sistema deve ter utilizar no máximo 1GB de memória e outro diz que deve utilizar no máximo 512MB de memória.
- Os requisitos devem ser **verificáveis**, isto é, deve ser possível verificar de forma sistemática se os requisitos estão ou não implementados de acordo com sua especificação. Um contra-exemplo é um requisito que diz "O sistema deve possuir uma interface de fácil utilização". Não é possível verificar esse requisito, pois não sabemos pra quem deve ser fácil, como devemos medir se é facil ou não etc.

## Priorização de Requisitos

Por fim, os requisitos devem ser priorizados. Às vezes, o termo requisitos é interpretado de forma literal, isto é, como uma lista de funcinalidades e restrições obrigatórias no sistema de software. No entanto, nem sempre é aquilo que foi especificado pelos clientes será implementado nas releases iniciais. Por exemplo, restrições de prazo e custos podem postergar a implementação de certos requisitos que não são essenciais por hora.

Outra particularidade relacionada aos requisitos é que eles são mutáveis com o tempo. Por exemplo, um sistema de contabilidade está sujeito a mudanças de tributação da legislação. Logo, se existe um documento com a especificação de um requisito que diz respeito a essa tributação, ele deve ser atualizado, assim como o código fonte relacionado a  esse requisito.

Chama-se de **rastreabilidade (traceability)** a capacidade de dado um trecho de código identificar os requisitos implementados por ele e vice-versa (isto é, dado um requisitos, identificar os trechos de código que o implementam)


## Principais Problemas Enfrentados na Especificação de Requisitos

- 1) Requisitos incompletos ou não-documentados (48%)
- 2) Falhas de comunicação externa (equipe com clientes) (41%)
- 3) Requisitos em constante mudança (33%)
- 4) Requisitos especificados de forma abstrata (33%)
- 5) Restrições de tempo (32%)
- 6) Problemas de comunicação interna (entre a equipe) (27%)
- 7) Stakeholders com dificuldade de separar requisitos de soluções (25%)
- 8) Falta de suporte dos clientes (20%)
- 9) Requisitos inconsistentes (19%)
- 10) Falta de compreensão das necessidades do cliente e regras de negócio (18%)


## Técnicas de Elicitação

<p align='center'><img src='marco_tulio_valente/static/prob_req_sol.png'></p>

A Engenharia de Software, e suas disciplinas, tem como finalidade o desenvolvimento 
de soluções de problemas do mundo real, utilizando em suas soluções sistemas de 
informação.

Conforme visto, quando os requisitos mudam frequentemente e o sistema não é de 
missão crítica, não vale a pena investir muito tempo na elaboração de um Documento 
Detalhado de Requisitos. Corre-se o risco desse documento nunca conseguir 
representar os reais requisitos dos sistema, pois estes mudam frequentemente, tornando 
o documento oneroso de se manter e potencialmente obsoleto.

Em projetos desse tipo, é recomendado adtoar documentos simplificados de especificação de 
requisitos - chamados de **História de Usuários** - e incorporar um representante dos clientes, 
em tempo integral, ao time de desenvolvimento, para tirar dúvidas e explicar os requisitos que 
mudaram ou não fazem mais sentido ao contexto.

Por outro lado, existem também aqueles sistemas com requisitos mais estáveis. Nesses casos, 
pode ser importante investir em especificações de requisitos mais detalhadas. Tais especificações 
podem ser também um requisito de contrato de certas empresas, que preferem contratar o desenvolvimento 
de um sistema somente após conhecer todos os seus requisitos. Por último, eles podem ser requisitados por 
organizações de certificação, principalmente no caso de sistemas que lidam com vidas humanas, como sistemas 
na área médica. Nesses casos é recomendado o uso de **Casos de Uso**, que são documentos detalhados para 
especificação de requisitos.

Um terceira situação é quando a solução que o projeto visa desenvolver não existe ainda, e não foi 
devidamente conceitualizada. Cenários como esse ocorrem quando o problema é mais definido que a 
solução em si. Nesses casos, mesmo que ocorra um levantamento amplo requisito, há o risco de os 
usuários dos sistemas não adotar a solução, por alguma particularidade não pensada. Nesses casos, é 
sugerido a utilização de um **Produto Mínimo Viável (MVP)**. Um MVP é um sistema funcional, que 
implementa subconjunto de funcionalidades da pontecial solução, com o objetivo de validar o sistema 
perante os reais usuários. Dada a importância contemporânea de tais cenários, com o surgimento de 
novos mercados (delivery de comida por app, aluguel de moradia online, aplicativos de relacionamento), 
e com o mercado de desenvolvimento de software cada vez mais competitivo, é fundamental que se utilize 
técnicas de validação nos estágio iniciais do projeto, para assim aumentar as chances de sucesso do 
sistema como um todo.

## Histórias de Usuários

Documentos de requisitos tradicionais, como aqueles produzidos quando se usa Waterfall, possuem 
centenas de páginas e levam às vezes mais de anos para ficarem prontos. Além disso, eles sofrem 
dos seguinte problemas:
- 1) Durante o desenvolvimento, os requisitos podem mudar e tornar o documento obsoleto.
- 2) Descrições em linguagem natural são ambíguas e incompletas, o que faz os desenvolvedores recorrerem frequentemente aos Usuários
- 3) Quando os clientes não estão integrados no projeto, as mudanças de requisitos podem nem sequer ser percebidos

Devido a esses problemas, uma longa fase inicial de especificação de requisitos é cada vez mais rara na maioria dos sistemas comerciais.

Os profissionais da industria que propuseram métodos ágeis e suas atividades, perceberam 
tais problemas e propuseram uma técnica pragmática para solucioná-los, que ficou conhecida 
pelo nome **História de Usuário**. De acordo com Ron Jeffries, em seu livro de 
desenvolvimento ágil, uma história de usuário é composta por 3 partes: Cartão, Conversa + Confirmação.

> História de Usuário = Cartão + Conversas + Confirmação

* **Cartão**, são artefatos usados pelos clientes para descrever na sua linguagem e em poucas sentenças, uma funcionalidade que esperam ver implementada no sistem
* **Conversas** entre os clientes e desenvolvedores, por meio das quais os clientes explicam e detalham o que escreveram em cada cartão. Em ciclos de vidas ágeis, para facilitar essas conversas, é exigido que um representante do cliente esteja a disposição da equipe de desenvimento.
* **Confirmação** são **testes de aceitação** especificados juntamente com o cartão que especifica quais são os critérios de validação e aceitação que serão verificados quando o requisito for implementado.

Por mais que o termo cartão induza que toda a informação necessária esteja documentada 
em um cartão em duas ou mais sentenças, isso se prova uma má abordagem. O cartão é apenas 
um lembrete dos para os clientes e desenvolvedores. Os cartões ajuda na visualização do que 
já foi feito, o que precisa ser feito e o que será feito na próxima interação de desenvolvimento.

Quando o desenvolvedor pega um cartão no quadro de cartões, ele deve buscar o cliente para 
que seja detalhado e documentado os requisitos relacionados ao cartão e seus critérios de 
aceitação.

Resumindo, quando usamos história de usuários, atividades de Engenharia de Requisitos (ER)
como elicitação, documentação, V&V e priorização continuam existindo, porém ocorrem 
durante todo o desenvolvimento do projeto. Dessa maneira, é troca-se um documento de 
requisito com centenas de paginas por diversas interações com clientes (ou representantes) 
onde é realizado as atividades de ER. 

## Características de Boas Histórias de Usuário

Para que uma história de usuário seja de qualidade é preciso que:

* As histórias devem ser **independentes**: dada duas histórias X e Y, deve ser possível implementá-las em qualquer ordem. Para isso, idealmente, não deve existir dependências entre elas.
* Histórias deve ser abertas para **negociação**. Frequentemente, costuma-se dizer que histórias (o cartão) são convites para conversas entre clientes e desenvolvedores durante uma sprint. Logo, ambos devem estar dispostos para implementar detalhes que não estão expressos ou que não cabem nos cartões da história. E os clientes devem aceitar argumentos técnicos vindo dos desenvolvedores, por exemplo sobre a inviabilidade de implementar algum detalhe da história inicialmente vislumbrado.
* Histórias devem agregar **valor** para o negócio dos clientes. Histórias são propostas, escritas e priorizadas pelos clientes e de acordo com o valor que elas agregam ao seu negócio. Por isso, não existe "história técnica", como a seguinte: "O sistema deve utilizar o padrão de projeto Strategy", esse tipo de especificação não deve está em cartões de Histórias de Usuários.
* Deve ser viável **estimar** o tamanho de uma história. Por exemplo, quantos dias serão necessários, quantas pessoas precisa ser envolvida. Normalmente, isso requer que a história sera pequena, e que os desenvolvedores tenham experiência na área do sistema.
* Histórias devem ser **sucintas**. Quando há uma história começa a ficar grande e complexo ela deve ser "convertida" em um **épico**. Épicos devem ser composto por histórias menores, e sua conclusão é um consequência da conclusão das histórias que a compõe.
* Histórias devem ser **testáveis**, isso é, elas devem ter critérios de aceitação objetivos. Como exemplo, podemos citar: "o cliente pode pagar com os cartões de crédito da bandeira X, Y e Z". Um contra-exemplo é a história: "Um cliente não deve esperar muito para ter sua compra confirmada". Essa história além de vaga não é testável, pois não há metricas nem critérios para verificação e validação. 

Antes de começar a escrever histórias, recomenda-se listar os principais usuários 
que vão interagir com o sistema. Assim, evita-se que as histórias fiquem enviesadas 
e atendam às necessidades de apenas certos usuários. Definidos esses **papéis de usuários**, 
costuma-se escrever histórias no seguinte formato:

> Como um [papel de usuário], eu gostaria de [realizar algo com sistema], 
> pois dessa maneira > resolveria o problema de [descrição do problema], [...]

É comum que no início de um projeto ocorra um workshop com os principais usuários do sistema, 
para discutir os objetivos do sistema, as principais funcionalidades, etc. Ao final do workshop, 
deve-se ter em mãos uma boa lista de histórias de usuários, que demandem alguns sprints para 
serem implementadas.


## Exemplo de Histórias de Usuário - Sistema de Controle de Bibliotecas


Vamos mostrar alguns exemplos de histórias de usuários para um sistema de controle de 
bibliotecas. Elas estão associadas a quatro tipos de usuários: aluno de graduação, professor, 
ex-aluno, funcionário da biblioteca.

As histórias que abrange todos os tipos de usuários devem ser categorizadas como histórias 
de usuários típicos. As funcionalidades descritas nessas histórias são exigências de todos 
os tipos de usuários.

> Eu como usuários típico, gostaria de realizar empréstimo de livros
> Eu como usuário típico, gostaria de devolver um livro que tomei emprestado
> Eu como usuário típico, gostaria de renovar empréstimos de livros.
> Eu como usuário típico gostaria de pesquisar por livros no acerto, pois dessa maneira eu consegueria descobrir livros pelo nome dos autores, por temas e por data de publicação.
> Eu como usuário típico, gostaria de reservar um livro para empréstimo, pois dessa maneira seria possível pegar livros disputados do acervo da biblioteca.
> Eu como usuário típico, gostaria de receber e-mails com novas aquisições
> Eu como usuário típico, gostaria de receber e-mails de alerta quando for minha vez de pegar um livro reservado, pois assim eu não esqueceria da data que tenho que ir na biblioteca pegar o livro.

Em seguida, mostramos as histórias que tem como usuário os professores:

> Eu como professor, gostaria de realizar empréstimos de maior duração.
> Eu como professor, gostaria de ter preferência na hora de reservar um livro
> Eu como professor, gostaria de sugerir a aquisição de certos livro para o acervo da biblioteca
> Eu como professor, gostaria de poder doar livros para a biblioteca
> Eu como professor, gostaria de devolver livros em qualquer biblioteca associada com a biblioteca do empréstimo.

Vale lembrar que as histórias de um perfil de usuário pode sofer alterações pelo representante do clientes 
no projeto, e que a funcionalidade listada por mais que foque em um tipo de usuário, pode potencialmente ser 
utilizada por outros perfis de usuários. Por exemplo, a história de usuário do professor que mapeia o 
requisito de aceitar doações de livros, pode ser extrapolada para outros perfis de usuários, permitindo 
que qualquer realize doações para a biblioteca.

Por fim, a última história de professor, que se refere a devolução em várias bibliotecas, 
pode ser considerada um épico, pois a funcionalidade a ser implementada possui uma 
complexidade maior. Como determinar as bibliotecas associadas? Como elas se comunicam? 
Já existe um sistema de interno entre elas? Todos as obras são passíveis dessa funcionalidade? 
Como será feito o transporte entre bibliotecas?

Por fim, mostramos as histórias propostas pelos funcionários da biblioteca:

> Eu como funcionário da biblioteca, gostaria de cadastrar novos usuários.
> Eu como funcionário da biblioteca, gostaria de cadastrar novos livros.
> Eu como funcionário da biblioteca, gostaria de remover do acervo livros estragados.
> Eu como funcionário da biblioteca, gostaria de obter estatísticas sobre o acervo
> Eu como funcionário da biblioteca, gostaria que o sistema envie e-mails de cobrança para alunos com empréstimo atrasados.
> Eu como funcionário da biblioteca, gostaria que o sistema calculasse a multa do atraso.

Vale lembrar que os tópicos acima são partes do cartão de história de usuário. Uma história de usuário, além da especificação da funcionalidade deve possuir também critérios de aceitação e detalhamentos sobre a funcionalidade em si. Segue um exemplo completo de uma história de usuário referente a funcionalidade de busca no acervo da biblioteca.

<p align='center' style='border: 1px solid'> 
    <img src='marco_tulio_valente/static/issue.png'>
</p>

Os testes de aceitação **deve ser especificado pelos clientes**. Dessa maneira evite a situação em que 
os próprios desenvolvedores decidem, por conta própria, sofisticar a especificação de uma história 
de usuário, sem que isso tenha sido pedido pelos clientes. 

## Perguntas Chaves

### Como especificar requisitos não-funcionais usando histórias de usuários?

Essa é uma das questões mais desafiadoras quando se utiliza métodos ágeis. 
De fato, o representante dos clientes pode escrever uma história dizendo que 
"O sistema deve ser seguro" e detalhar os critérios e métricas de aceitação. 
Porém como implementar um requisito não-funcional? Geralmente, requisito 
não-funcionais são do sistema como um todo. O desenvolvedor vai precisar 
modificar o sistema todo para garantir a segurança? E quando ele terminar e 
outras funcionalidade forem implementadas, ele terá que mexer de dovo?

Com isso em mente, fica claro que requisitos não-funcionais devem ser 
critérios de aceitação para as demais histórias de usuários. Toda vez que 
uma nova funcionalidade for implementada deve-se verificar se o sistema 
como todo, após a integração das novas funcionalidades atendem as restrições 
dos requisitos não-funcionais.

### É possível criar histórias de usuários para estudo de uma nova tecnologia?

Conceitualmente não! Como o próprio nome diz, são histórias de usuários, e elas 
devem dizer respeito somente aos usuários. Porém, isso não deve impedir que essa 
atividade seja realidade, ela somente não deve se misturar com as histórias de 
usuários.


## Casos de Uso

Casos de uso são documentos textuais de especificação de requisitos. Esse 
documento possui uma descrição mais detalhada dos requisitos do que as histórias 
de usuários. Esse método de elicitação de requisitos, leva em conta que o cliente 
não estará disponível em todo ciclo desenvolvimento, precisando assim elicitar, 
documentar e validar tudo de uma só vez.

Geralmente esse documento em ciclos de vida que possuem uma fase Especificação de 
Requisitos bem definidas. Desse modo, são realizadas entrevistas com os usuários, 
nas primeira fases do projeto para que os desenvolvedores possam mapear todos as 
peculiaridades do sistema. Como essa técnica é geralmente utilizada em ciclos de 
vida sequenciais, é essencial que esse documento seja verificado pelos 
desenvolvedores e validado pelos usuários, antes das fases de design e implementação 
do sistema.

Os casos de uso são escritos na perspectiva de uma **ator** que deseja usar o sistema.
Geralmente o ator é um usuário humano, mas há casos onde o ator é um outro sistema.

Um caso de uso enumera os passos que um ator realiza num sistema com um determinado 
objetivo. Esses passos podem pertencer a duas lista, a lista do **fluxo normal** e 
o **fluxo de extensões**.

No **fluxo normal** será listados os passos que os usuários deverão realizar para 
atingir seu objetivo. Nesse fluxo considera-se que tudo dá certo, não ocorre exceções, 
e o usuário sabe exatamente como realizar as subatividades. Esse fluxo também é 
chamado de "fluxo feliz".segunda

Já no **fluxo de extenssões** será listado os passos que podem ocorrer durante 
a realização de uma determinada atividade. Pode ocorrer falhas de conexão, pode 
ocorrer falhas de usabilidade (o usuário não achar uma determinada funcionalidade) 
etc. Todos esses cenários devem está listado nesse fluxo.

A seguir um exemplo de um caso de uso, referente a um sistema bancário e que 
especifica uma transferência entre contas, por um cliente do banco.

> **Transferir Valores entre contas** <br>
> **Ator:** Cliente do Banco <br><br>
> **Fluxo Normal**: <br>
> **1 -** <u>Cliente acessa sua conta pelo celular ou internet banking</u> <br>
> **2 -** Cliente informa o valor que deseja transferir <br>
> **3 -** Cliente informa o valor que deseja transferir <br>
> **4 -** Cliente informa a data que deseja fazer a transação <br>
> **5 -** Cliente confirma a transação <br>
> **6 -** O sistema realiza a transação <br>
> **6 -** O sistema pergunta se o cliente deseja fazer uma nova transação. <br><br>
> **Extensões:** <br>
> 2a - Se a conta e/ou agência estiverem incorretas, deve ser solicitado que se digite uma nova conta e/ou agência. <br>
> 3a - Se o valor estiver acima do saldo atual, deve ser solicitado um novo valor. <br>
> 4a - Se a data for inválida, deve-se solicitar uma nova data. Datas inválidas são datas já passadas ou  datas superiores à daqui 1 ano. <br>
> 5a - Se a data informada é a data atual, deve-se transferir imediatamente. <br>
> 5b - Se a data informada for uma data futura e válida, deve-se agendar a transferência. <br>

Agora vamos para algumas boas práticas dos casos de uso, usando o exemplo anterior. 

> **1.** Todo caso de uso ter um nome, pelo qual vai ser identificado. Esse nome deve começar por um verbo no infinitivo <br>
> **2.** Todo caso de uso ter um ator principal. <br>
> **3.** Um caso de uso pode incluir (referenciar) outro caso de uso. Por exemplo a etapa 1, de acesso a conta. A sintaxe para referência é sublinhar o passo que faz referência  <br>

