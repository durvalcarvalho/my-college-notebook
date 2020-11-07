# Qualidade de produto de Software  (ISO/IEC 25010)

A ISO/IEC 25010 é uma norma ISO que define os critérios que determinam se um produto de software possui ou não qualidade. Também define modelos de avaliação.

De acordo com a norma, um software de qualidade deve possuir **Adequação funcional**, **Performance Eficiente**, **Compatibilidade**, **Usabilidade**, **Confiabilidade**, **Segurança**, **Manutenibilidade** e **Portabilidade**.

## 1. Adequação funcional

O sistema deve fornecer funções que correspondam as necessidades explícitas e implícitas

### 1.1 Completude Funcional

O conjunto de funcionalidades deve abranger todas as tarefas e objetivos específicos dos seus usuários. Sendo assim, as funções e operações devem funcionar conforme especificado nos manuais do usuário ou requisitos especificados. Portanto as funções e operações devem fornecer um resultado razoável e aceitável para alcançar o objetivo específico pretendido da tarefa.

### 1.2 Correção ou exatidão funcional

Sistema deve fornecer os resultados corretos com o grau de precisão necessário. Assim o sistema deve evitar gerar resultados incorretos ou imprecisos causados por dados inadequados. O sistema deve evitar dados de baixa precisão para cálculos precisos. Deve-se manter a consistência entre os procedimentos atuais de operação e os descritos no manual de operação.


### 1.3 Adequação funcional

As funções do sistema devem facilitar a realização de tarefas para atender os objetivos específicos. Desse modo, deve excluir etapas desnecessárias que atrapalhem a realização da finalidade alvo do usuário.

## 2. Eficiência de desempenho

Esse tópico está relacionado com o desempenho de um determinado sistema em relação à quantidade de recursos utilizados sob condições estabelecidas.

Analisar o desempenho de software tem por objetivo estimar tempo e recursos consumidos, descobrir potenciais pontos de gargalo de processamento e predizer o desempenho do sistema em um ambiente real.

### 2.1. Comportamento Temporal

Essa análise se relaciona ao tempo de uma funcionalidade ou de um sistema. Esse tempo pode ser o **tempo de resposta**, **tempo de processamento**, **taxas de transferências** e outras métricas capazes de aferir o comportamento temporal do software.

### 2.2. Utilização de recursos

Essa análise busca quantificar as quantidades de recursos que o sistema utilizada durante sua execução. (utilização de CPU, memória, cache, banda de rede)

### 2.3 Capacidade

Essa análise busca verificar os limites superiores de uso do software, procurando identificar até que ponto o sistema atende aos requisitos. Isso pode ser feito através de teste de estresse por exemplo. Um exemplo de requisito de capacidade é que o software deve suportar acesso simutâneo de 3 mil usuários.


## 3. Compatibilidade

Esse tópico está relacionado com a capacidade do sistema trocar informações e/ou realizar suas funções em um hardware ou ambiente compartilhado com outros sistemas.

### 3.1. Coexistência

O sistema deve executar suas funções mesmo quando o ambiente e os recursos são compartilhados com outros sistemas, sem impactar negativamente suas funcionalidades e os outro sistemas.

### 3.2. Interoperabilidade

O sistema deve ser capaz de trocar informações e usar informações que foram trocadas. Esse tipo de requisito é comum quando está se desenvolvendo um subsistema com linguagens e/ou ferramentas diferentes dos demais subsistemas.

## 4. Usabilidade

O produto desenvolvido deve ser eficáz, eficiente e deve satisfazer um usuário específico durante o seu uso em um contexto de uso determinado.

### 4.1. Acessibilidade

O sistema não deve ser restritivo com um parte dos usuário. Desse modo deve incluir facilidades de acesso para usuários com necessidades especiais (deficiências visuals, motoras, cognitivas e outras).

### 4.2. Apreensibilidade

O sistema deve ser fácil de ser aprender a utilizar. Além disso, o sistema deve disponibilizar manuais, tutoriais, documentações de treinamento, acesso de dados e suporte. Em outras palavras, o sistema deve suportar o aprendizado eficiente e eficaz dos usuários.

### 4.3. Estética da interface do usuário

O sistema deve fornecer uma interface de usuário que permita interações agradáveis e satisfatória.

### 4.4. Operabilidade

O sistema deve possuir atributos que o torne fácil de operar e controlar, aumentando assim sua eficiência. Exemplos de atributos assim são menus personalizados por usuários, acesso rápido, feedback adequado. 

### 4.5 Proteção contra o erro

O software deve evitar que os usuários cometam erros durante o seu uso, e caso ocorram deve possibilitar o seu conserto sem impacta a produtividade do usuário. Essa característica pode ser obtida através de verificações de dados de entrada, confirmação de ações perigosas, reversibilidade de ações realizadas.

### 4.6 Reconhecimento
???

## 5. Confiabilidade

O sistema deve executar suas funções sob condições determinadas em um dado período de tempo, de forma confiável, controlando e revertendo situações de erros.

### 5.1. Maturidade

O sistema deve apresentar um percentual inferior a T % de erros durante o intervalo K de tempo ou em F mil transações.
Um sistema maduro é capaz de funcionar durante longos períodos de tempo sem apresentar erros que impocibilitem o funcionamento do sistema.

### 5.2. Disponibilidade

O software deve está em um estado operacional durante um tempo estabelecido.

### 5.3. Tolerância a falhas

O sistema deve operar como definido e manter um nível aceitável de desempenho mesmo em cenários de falhas de software e de hardware. 

### 5.4 Recuperabilidade

Em casos de falhas ou interrupções, um sistema deve recuperar os dados ao estado pré falha/interrupção. Um exemplo disso é um formulário que guarda seu estado mesmo quando é fechado, ou um SGBD que assegura os dados perdidos durante uma transação mal sucedida

## 6. Segurança

Um sistema deve proteger as informações e dados dos seus usários, de acordo com o contexto que está inserido. Caso necessário deve possuir graus de acesso e níveis de autorização no sistema.

### 6.1. Confidencialidade

O sistema deve garantir que os dados são acessíveis somente por um grupo de usuários autorizados.

### 6.2. Integridade

O sistema deve impedir tentativas de acesso não autorizado ou modificações/coleta de dados indesejáveis (SQL Injection). 

### 6.3. Não repúdio

O sistema deve ser capaz de provar que uma determinada ação ocorreu ou não por um determinado usuário. Desse modo, um usuário não poderá negar ter realizado uma determiada ação, já que o sistema possui um submódulo que prova o contrário. A presença de assinaturas digitáis é uma maneira de se atingir esse requisito

### 6.4. Responsabilização

O sistema deve possuir medidas de responsabilização capaz de identificar ações de um usuário. A presença de log de ações é uma maneira de se atingir esse requisito.

### 6.5. Autentificação

O sistema deve ser capaz de autentificar que determinado acesso foi realizado pelo usuário. Essa características pode ser atingida por uso de senha, biometrica, autentificação em dois fatores.

## 7. Manutenibilidade

O sistema deve ser passível de modificações com determinado grau de eficácia e eficiência por um conjunto de mantenedores.

### 7.1 Modularidade

O sistema deve construido com base em componentes discretos e potencialmente independentes entre si, possibilitando que a alteração de um componente impacte minimamente os demais.

### 7.2. Reusabilidade

O sistema deve sempre que possível utilizar componentes discretos pré-existentes, invés de desenvolver compontentes similares de propósito único.

### 7.3. Analisabilidade

O sistema deve ser capaz de encontrar problemas, bugs e defeitos com o menor esforço possível. Esse requisito pode ser medido pelo esforço gasto na tentativa de diagnosticar deficiência ou casas de falhas. Esse requisito pode ser possibilitado pela separação de responsabilidades, pois assim facilitaria diagnosticar a origem do problema com base nas características da falha.

### 7.4. Modificabilidade

A mudança nas partes do sistema deve introduzir o mínimo possível de erros. Assim, o esforço gasto ao implementar uma nova funcionalidade ou mudar um comportamento implementado não deve superar o esforço de construção do próprio sistema.

### 7.5. Testabilidade

Os requisitos funcionais e não funcionais do sistema de software devem ser implementados de modo que sejam verificáveis. Em outras palavras, o software deve ser implementado de modo que seja possível confrontá-lo a testes.

## 8. Portabilidade

O teste de portabilidade tem como principal objetivo de verificar se o software tem a capacidade de trabalhar em diversos ambientes e situações. Em outras palavras, este teste verifica se o software é capaz de trabalhar com diversos dispositivos de hardware e com outros software em um único ambiente.

### 8.1. Adaptabilidade

O sistema deve ser adaptável de forma eficaz e eficiente para o uso em um novo hardware, novo ambiente de software, novo sistema operacional, novo navegador.

### 8.2. Instalabilidade

O sistema deve ser capaz de ser instlado e/ou desinstalado de forma eficaz e eficiente em um ambiente determinado.

### 8.3. Substitutibilidade

O sistema deve ser passível de ser substituído por uma versão mais recente do sistema sem perda de dados, configurações e sem impactar a produtividade do usuário. Por exemplo, o sistema não deve ser que nem o Windows e começar a atualizar do nada por exmeplo.


