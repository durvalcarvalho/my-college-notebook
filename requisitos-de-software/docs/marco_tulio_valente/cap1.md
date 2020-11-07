# Capítulo 1

# Introdução

## Engenharia de Software

Área destinada a investigar os desafios e propor soluções que permitam desenvolver sistemas de software - principalmente aqueles mais complexos e de maior tamanho - de forma produtiva e com qualidade.

A Engenharia de Software trata da aplicação de abordagens sistemáticas, disciplinadas e quantificáveis para desenvolver, operar, manter e evoluir o software. Ou seja, Engenharia de Software é a area que se preocupa em propor e aplicar princípios de engenharia na construção de software.

## Não existe bala de prata

Segundo Brooks (1987), existem dois tipos de dificuldades em desenvolvimento de software: **dificuldades essenciais** e **dificuldades acidentais**. As essenciais são da natureza da área e dificilmente serão superadas por qualquer nova tecnologia ou método que invente.

As dificuldades essenciais são as seguintes:
- 1) **Complexidade**: dentre as construções que o homem se propõe a realizar, software é uma das mais desafiadoras e mais complexas que existe. Na verdade, como dissemos antes, mesmo construções de engenharia tradicional, como um satélite, uma usina nuclear ou um foguete, são cada vez mais dependentes de software.
- 2) **Conformidade**: pela sua natureza software tem que se adaptar ao seu ambiente, que muda a todo momento no mundo moderno. Por exemplo, se as leis para recolhimento de impostos mudam, normalmente espera-se que os sistemas sejam rapidamente adaptados à novas legislação. Isso é mais raro em outras áreas (dificilmente uma lei da física muda)
- 3) **Facilidade de mudanças**: que consiste na necessidade de evoluir sempre, incorporando novas funcionalidades. Na verdade, quanto mais bem sucedido for um sistema de software, mais demanda por mudanças ele recebe.
- 4) **Invisibilidade**: devido à sua natureza abstrata, é difícil visualizar o tamanho e consequentemente estimar o desafio de construir um sistema de software.

As dificuldades (2), (3) e (4) são específicas de sistemas de software, isso é, elas não ocorrem em outros produtos de Engenharia, pelo menos na mesma intensidade. Por exemplo, quando uma legislação ambiental muda, uma fabricante de carros tem anos para se adequar.

Já as **dificuldades acidentais** estão relacionadas a problemas tecnológicos, que os Engenheiros de Software podem resolver, se devidamente treinados e caso tenham acesso às defindas tecnologias e recursos. Como exemplo, podemos citar: um compilador que dificulta o desenvolvimento com mensagens de erros obscuras, uma IDE que possui muitos bugs, um framework que se mostra problemático no meio do projeto. Todas essas dificuldades dizem respeito ao projeto específico e não ao desenvolvimento de software como um todo, desse modo, elas podem ser evitadas.

## O que se estuda em Engenharia de Software?

Para responder a essa pergunta, vamos se basear no Guide to the Software Engineering Body of Knoledge, também conhecido por SWEBOK. O objetivo desse documento é documentar o corpo de conhecimento que caracteriza a área que hoje chamamos de Engenharia de Software.

O SWEBOK define 12 áreas de conhecimento em Engenharia de Software:
- 1. Engenharia de Requisitos
- 2. Projeto de Software
- 3. Construção de Software
- 4. Teste de Software
- 5. Manutenção de Software
- 6. Gerência de Configuração
- 7. Gerência de Projetos
- 8. Processos de Software
- 9. Modelos de Software
- 10. Qualidade de Software
- 11. Prática Profissional
- 12. Aspectos Econômicos

## Engenharia de Requisitos

Os requisitos de um sistema definem o que ele deve fazer e como ele deve operar. Assim, a Engenharia de Requisitos inclui o conjunto de atividades realizadas com objetivo de definir, analisar, documentar e validar os requisitos de um sistema.

Em uma primeira classificação, os requisitos podem ser **funcionais** ou **não-funcionais**.

Requisitos funcionais definem o que um sistema deve fazer, ou seja, quais funcionalidades ou serviços ele deve implementar.

Já os requisitos não-funcionais definem como um sistema deve operar, sob quais restrições e com qual qualidade de serviço. São exemplos de requisitos não-funcionais: desempenho, disponibilidade, tolerância a falhas, segurança, privacidade, interoperabilidade, capacidade, manutenibilidade, usabilidade, dentre outros.

Por exemplo, suponha um sistema de home-banking. 

> **Requisitos Funcionais:**
>> 1. Informar saldo da conta
>> 2. Informar o extrato 
>> 3. Realizar transferências entre contas 
>> 4. Pagar o boleto bancário 
>> 5. Cancelar um cartão de débito 

> **Requisitos Não-Funcionais:** 
>> 1. Desempenho: Informar o saldo da conta em menos de 5 segundos 
>> 2. Disponibilidade: O sistema deve estar funcionando 99.99% do tempo 
>> 3. Tolerância a falhas: O sistema deve continuar operando mesmo se um dos  servidores cair
>> 4. Segurança: Os dados devem ser criptografados 
>> 5. Privacidade: Os dados dos clientes não devem ser disponível para terceiros 
>> 6. Interoperabilidade: O sistema deve se integrar com o sistema do Banco Central 
>> 7. Capacidade: O sistema deve ser capaz de armazenar dados de 1mi de clientes 
>> 8. Usabilidade: O sistema deve ter suporte para cegos e surdos 

## Projeto de Software (Software Design)

Durante o projeto de um sistema de software, são definidas suas principais características arquiteturais. Essas características são pensadas no nível de interfaces sem que haja implementação de código em si. 

Essa etapa de projeto se torna necessária para propor uma solução que além de solucionar o problema, também seja viável de se manter. Pois é esperado que um projeto de software necessite de mudanças no decorrer do tempo, sendo assim necessário projetar uma estrutura de código que suporte alterações e modificações, facilitando assim a manutenabildiade e a portabilidade do sistema.

## Construção de Software

A construção trata da implementação do projeto de software, isto é, a codificação do sistema. Nesse momento, existem diversas decisões que precisam ser tomadas, como, por exemplo: definir os algoritmos e estruturas de dados que serão usados; decidir os frameworks e bibliotecas de terceiros que serão usados; decidir técnicas de tratamento de exceções; definir padrões de nomes, layout e documentação de código e, por último, mas não menos importante, definir as ferramentas que serão usadas no desenvolvimento, incluindo compiladores, ambientes integrados de desenvolvimento (IDEs), depuradores, sistemas gerenciadores de banco de dados (SGBDs), ferramentas para construção de interfaces, etc.

## Teste de Software

Teste consiste na execução de um programa com um conjunto finito de casos, com o objetivo de verificar se ele possui o comportamento esperado. 

> Testes de software mostram a presença de bugs, mas não a sua ausência. <br>
> -- <cite>Edsger W. Dijkstra</cite>

Existem diversos tipos de testes. Por exemplo:
- 1) Testes de unidade (quando se testa uma pequena unidade do código, como uma classe)
- 2) Teste de integração (quando se testa uma unidade de maior granularidade, como um conjunto de classes) 
- 3) Testes de performances (quando se submete o sistema a uma carga de processamento, para verificar seu desempenho), 
- 4) Teste de usabilidade (quando o objetivo é verificar a usabilidade da interface do sistema)
- 5) Vários outros tipos

Os testes podem ser usados tanto para verificação como para validação de sistemas. Verificação tem como objetivo garantir que um sistema atende à sua especificação. Já com validação, o objetivo é garantir que o sistema atende às necessidades de seus clientes. A diferença entre os conceitos só faz sentido porque pode ocorrer de um sistema implementar a todas as especificações e não necessariamente solucionar o real problema do cliente. 

Essa diferença pode ocorrer devido um erro na fase elicitação de requisitos, ou por uma mudança de requisito durante o projeto.

Em duas frases, a diferença entre verificação e validação é:
- **Verificação**: Estamos construindo o sistema corretamente? Isso é, de acordo com os requisitos.
- **Validação**: O sistema que estamos implementando soluciona o problema que o cliente está tendo?

Quando se fala de testes de software, é importante distinguir três conceitos relacionados: defeitos, bugs e falhas. Para ilustrar a diferença entre eles, suponha o seguinte código para calcular a área de um círculo, dependendo de uma condição:

```python
# Calcula a área ou o volume da esfera
if(FLAG==True):
    area = 4 * pi * raio**3
else:
    volume = (4 * p * r**3)/6
```

> **Defeito ou Defeito**: Esse código utiliza a fórmula da área errada. Área da esfera é `4 * pi * raio**2`
> **Defeito ou Defeito**: Esse código utiliza a fórmula volume errada. Área da esfera é `(4 * p * r**3)/3`
> **Falha**: O software de simulação apresenta erro na simuação devido a uma colisão entre objetos que não deveria ter acontecido (a área do círculo está errada)

Dessa maneira, podemos concluir que toda falha é causada por um ou mais defeitos no código, porém nem todo defeito ocasiona uma falha, pois a parte do código onde o defeito está pode não ser executada.

**Resumidamente**: código defeituoso é aquele que não está de acordo com a sua especificação. Se esse código for executado e de fato levar o programa a apresenta rum resultado incorreto, diz-se que ocorreu uma falha.

**Aprofundamento**: Na literatura, o termo erro e falta (fault) aparece com frequência. Esse termo tem o mesmo sentido do termo defeito. Resumindo, defeito, erro, falta e bug são sinônimos, quando não devidamente especificados.

## Manutenção e Evolução de Software

Assim como sistemas tradicionais de Engenharia, software também precisa de manutenção. As manutenções podem ser corretivas, preventivas, adaptativas, de refatoração e evolutivas.

**Manutenção corretiva** tem como objetivo corrigir falhas reportadas por usuários ou outros desenvolvedores.

**Manutenção preventiva** tem como objetivo corrigir bugs latentes no código, que ainda não causaram falhas na produção (mundo real). Um exemplo foi a correção no modo de representação de datas antes do século virar (1999 para 2000).

**Manutenção adaptativas** tem como objetivo adaptar um sistema a uma mudança em seu ambiente, incluindo tecnologia, legislação, regras de integração com outros sistemas ou demandas de novos clientes. Uma mudança na legislação pode exigir uma mudança adaptativa em um software de contabilidade.

**Manutenção de refatoração** são modificações realizadas no sistema, preservando o seu comportamento, visando exclusivamente a melhoria da manutenabilidade do sistema. Exemplos de refatoração é renomeação de métodos e variáveis, encapsulamento de rotinas frequentes, etc.

**Manutenção evolutiva** é aquela realizada para incluir uma nova funcionalidade ou introduzir aperfeiçoamentos importantes em funcionalidade existentes. Por exemplo, os sistemas bancários desenvolvidos há 40 anos atrás sofreram diversas manutenções evolutivas para suportar acesso web, acesso mobile, acesso por caixa-eletrônico e etc.

**Sistemas legados** são sistemas antigos, baseados em tecnologias ultrapassados (linguagens antigas, sistemas operacionais, bancos de dados). Por esse motivo a manutenção desses sistemas constuma ser mais custosa e arriscada, pois os desenvolvedores dessas tecnolgias provavelmente não dão mais suporte e não existe muitos desenvolvedores que conheçam a fundo tecnologias legadas. Porém, é importante ressaltar que legado não significa irrelevante, pois muitas vezes esses sistemas realizam operações críticas para seus clientes.

## Gerência de Configuração

Atualmente, é inconcebível desenvolver um software sem um sistema de controle de versão, como o git. Esses sistemas auxiliam no armazenamento e recuperação de todas as versões do software (código, documentação, manuais, páginas web, relatórios, etc.)

Entretanto, gerência de configuração vai além de controle de versão. Essa área do conhecimento busca definir um conjunto de políticas para gerenciar as diversas versões do sistema, preocupando com o modo que essas versões serão disponibilizadas, como os dados serão preservados de uma versão para outra, como será a nomenclatura de uma versão para outra e outros detalhes.

## Gerência de Projeto (Project Management)

O desenvolvimento de projeto é uma atividade multidisciplinar que exige a participação de um grupo de pessoas. Desse modo é fundamental para o sucesso do projeto que existam processos de gerência de projeto, como negociação de interesses, definição de prazos, cronogramas, contratação de pessoas, execução de treinamentos, políticas de promoção, políticas de remuneração, gerência de riscos, acompanhamento da concorrência, execução de planos de marketing, controle das finanças etc.

A execução de um projeto vai muito além do que desenvolver uma solução técnica, desse modo é imprescindível que a área de conhecimento de gerência seja compreendida e executada com maestria.

## Processos de Desenvolvimento de Software

Um proceso de desenvolvimento define queais atividades e etapas devem ser seguidas para construir e entregar um sistema de software. Uma analogia pode ser feita, por exemplo, com a construção de prédios, que ocorre com algumas etapas: fundação, alvenaria, cobertura, instalação hidráuloca, instalação elétrica, acabamentos, pintura, etc.

Historicamente, existem dois grandes tipos de processos que podem ser adotados na construção de sistemas de software:

- **Processos em Cascata (Waterfall)**
- **Processos Ágeis (Incrementais ou iterativos)**

### Processo em Cascata (Waterfall)

Projeto Waterfall, também chamado de processos dirigidos por planejamento, propõem que a construção de um sistema deve ser feita em etapas sequênciais, como em uma cascata de água, onde a água vai escorrendo de uma nível para o outro, nunca voltando para o nível anterior. Essas etapas são as seguintes: 
- Levantamento de Requisitos
- Análise (Projeto de alto nível)
- Projeto Detalhado (Design)
- Codificação
- Testes

<figure align='center'>
    <img src='marco_tulio_valente/static/etapas-waterfall.png'>
  <figcaption>Fig.1 - Etapas de um projeto em cascata</figcaption>
</figure>

O processo em cascata foi muito utilizado até o final da década de 90. Com a difusão de sistemas de software em diversos setores, ficou evidente que esse processo de desenvolvimento não era eficaz para todos os casos, principalmente para os casos em que os requisitos mudavam com frequência.

No início de 2001, um grupo de 17 Engenheiros de Software propôs um modo alternativo para construção de software, que eles chamaram de desenvolvimento Ágil.

### Processos Ágeis

Diferentemente dos processos em cascatas, a ideia de processos ágeis é que um sistema seja construido de forma incremental e iterativa. Pequenos incrementos de funcionalidade são produzidos, em intervalos de cerca de um mês e, logo em seguida, validados pelos usuários. Uma vez que o incremento produzido seja aprovado, o ciclo de repete.

Processos ágeis tiveram um profundo impacto na industria de software. Hoje, eles são usados pelas mais diferentes organizações que produzem software. Diversos métodos que concretizam os princípios ágeis foram propostos, tais como XP (Extreme Programming, Scrum, Kanban e Lean Development). Esses métodos também ajudaram a disseminar diversas práticas de desenvolvimento de software, como **testes automatizados**, **test-driven development** (TDD) e **integração contínua**.

## Modelos de Software

Um modelo oferece uma representação em mais alto nível de um sistema do que o seu código fonte. O objetivo é permitir que desenvolvedores possam analisar propriedades e características essenciais de um sistema, de modo mais fácil e rápido, sem ter que mergulhar nos detalhes do código.

Modelos podem ser criados antes do código, por exemplo, ainda na fase de design. Nesse caso, eles são usados para apoair **Engenharia Avante (Forward Engineering)**, isso é, primeiro cria-se um modelo para ter um entendimento de mais alto nível de um sistema, antes de partir para a implementação do código.

Por outro lado, os modelos podem ser criados para ajudar a entender uma base de código existente, nesse casos, eles são um instrumento de **Engenharia Reversa (Reverse Engineering)**. Em ambos os casos, modelos são uma forma de documentar o código de um sistema.

Frequentemente, modelos de software são baseados em notações gráficas. Por exemplo, **UML** (Unified Modelling Language) é uma notação que defini mais de uma dezena de diagramas gráficos para representar propriedades estruturais e comportamentais de um sistema.

Na próxima figura, mostra-se um diagrama UML, chamado Diagrama de Classes. Nesse diagrama, as caixas retangulares representam classes do sistema, incluindo seus atributos e métodos. As setas são usadas para denotar relacionamentos entre as classes.

<figure align='center'>
    <img src='marco_tulio_valente/static/uml-1.png'>
  <figcaption>Fig.2 - Exemplo de Diagrama de Classe UML com duas classes, Cliente e ContaBancaria</figcaption>
</figure>

## Qualidade de Software

Qualidade é um objetivo recorrente em produtos de engenharia. Segundo uma classificação inicialmente proposta por Bertrand Meyer, qualidade de softwar epode ser avaliada em duas dimensões: **qualidade externa** ou **qualidade interna**.

**Qualidade externa** considera fatores que podem ser aferidos sem analisar o código de um sistema. Assim, a qualidade externa de um software pode ser avaliada mesmo por usuários comuns, que não são especialistas em Engenharia de Software. Como exemplo, temos os seguintes fatores de qualidade externa:
- Correção: o software atende à sua especificação? Nas situações normais, ele funciona como esperado?
- Robustez: o software continua funcionando mesmo quando ocorrem eventos anormais, como uma falha de comunicação ou de disco? Por exemplo, um software robusto não pode sofrer um _crash_ casos tais eventos anormais ocorram. Ele deve pelo menos avisar por qual motivo não está conseguindo funcionar conforme previsto.
- Eficiência: o software faz bom uso de recursos computacionais? Ou ele precisa de um hardware extremamente poderoso e caro para funcionar?
- Portabilidade: é possível portar esse software para outras plataformas e sistemas operacionais? Ele, por exemplo, possui versões para os principais sistemas operacionais?
- Facilidade de Uso: o software possui uma interface amigável, mensagens de erro claras, suporta mais de uma língua, etc? O sistema possui recursos que permite pessoas com deficiência usá-lo?
- Compatibilidade: o software é compatível com os principais formatos de dados de sua área? Por exemplo, se o software for uma planilha eletrônica, ele importa arquivos em formatos XLS e CSV?

Por outro lado, **qualidade interna** considera propriedades e características relacionadas com a implementação de um sistema. Portanto, a qualidade interna de um sistema somente pode ser avaliada por um especialista em Engenharia de Software e não por usuários leigos. São exemplos de fatores de qualidade:
- Modularidade
- Legibilidade do código
- Manutenibilidade
- Testabilidade

Para garantir a qualidade do software, diversas técnicas podem ser usadas. Primeiro, **métricas** podem ser usadas para acompanhar o desenvolvimento de um produto de software, incluindo métricas de código fonte e métricas de processo. Um exemplo de métrica de código é o número de linhas de um programa, que pode ser usado para dar uma ideia de seu tamanho. Métricas de processos incluem, por exemplo, o número de defeitos reportados em produção por usuários finais em um certo intervalo de tempo.

Existem também práticas que podem ser adotadas para garantir a produção de software com qualidade. Modernamente, por exemplo, diversas organizações usam **revisões de código**, isto é, o código produzido por um desenvolvedor somente entra em produção depois de ser revisado e inspecionado por um outro desenvolvedor do time. O objetivo é detectar possíveis _bugs_ antecipadamente, antes de o sistema entrar em produção. Além disso, revisões de código servem para garantir a qualidade interna do código, isto é, sua manutenabildiade, legibilidade, modularidade, etc., e para disseminar boas práticas de Engenharia de Software entre os membros de um time de desenvolvimento.

## Prática Profissional

Bjarne Stroustrup afirma que a nossa sociendade funciona a base de software. Isso gera diversas oportunidades para os profissionais da área, mas também implica em responsabilidades e pontos de preocupação. Existem questionamentos sobre o papel e a responsabilidade ética dos profissionais que atuam nessa área, em uma sociendade onde os relacionamentos são cada vez mais mediados por algoritmos e sistemas de software. Temos o Código de Ética da ACM e da IEEE Computer Society. Esse último é específico para a prática de Engenharia de Software, e prescreve que:

> "Engenheiros de software devem se comprometer em fazer da análise, especificação, projeto, desenvolvimento, teste e manutenção de software uma profissão benéfica e respeitada."

No Brasil, existe o Código de Ética da Sociedade Brasileira de Computação (SBC), que defini deveres dos profissionais de Informática, como:
> Art.1°: Contribuir para o bem-estar social, promovendo, sempre que possível, a inclusão de todos setores da sociedade.
> Art.2°: Exercer o trabalho profissional com responsabilidade, dedicação, honestidade e justiça, buscando sempre a melhor solução.
> [...]
> Art.5°: Guardar sigilo profissional das informações a que tiver acesso em decorrência das atividades exercidas.
> [...]


## Aspectos Econômicos

Diversas decisões e questões econômicas se entrelaçam com o desenvolvimento de sistemas. Por exemplo, uma startup de software deve decidir qual o modelo de rentabilização pretende adotar, se baseado em assinaturas ou em anúncios. Desenvolvedores de apps para celulares têm que decidir sobre o preço que irão cobrar pela sua aplicação, o que, dentre outras variáveis, requer conhecimento sobre o preço dos apps concorrentes. Por isso, não é surpresa que grandes organizações de software atualmente empreguem economistas, para avaliarem os aspectos econômicos dos sistemas que produzem.


## Sistema ABC (Acute, Business e Casual)

Softwares permeiam as mais distintas atividades humanas. Temos softwares de todos os tamanhos, em todas as atividades, com os mais diferentes requisitos funcionais e não-funcionais, desenvolvidos por 1-2 Desenvolvedores ou por grandes corporações. O risco é então achar que existe um único modo de desenvolver software. 

Uma classificação proposta por Bertrand Meyer ajuda a distinguir e entender os diferentes sistemas de software que podem ser construídos e os princípios de Engenharia de Software mais recomendados para cada uma das categorias propostas. Segunda essa classificação, existem três tipos principais de software:
- Sistema A (Acute)
- Sistema B (Business)
- Sistema C (Casual)

**Sistemas C** não sofrem pressão para terem níveis alto de qualidade. São sistemas que toleram alguns bugs, os quais não vão comprometer fundamentalmente o seu funcionamento. Como por exemplo, podemos citar um script feito para um trabalho acadêmico, um programa de conversão de dados (que vai ser usado uma única vez, para migrar dados de um banco para outro), um sistema para gerenciar as salas disponíveis para reunião em uma empresa, etc. Por isso, Sistemas C, não precisam ter níveis altos de qualidade interna, podendo apresentar problemas como: baixa cobertura de testes, duplicação de código, falta de documentação, sem causar grandes impactos. Em geral, esses sistemas, são desenvolvidos por 1-2 programadores, ou seja, são sistemas pequenos e não críticos. Por tudo isso, eles não se beneficiam tanto das práticas, técnicas e processos definidos na literatura de Engenharia de Software. Geralmente, o uso de uma metodologia muito elaborada nesse tipo de sistema se caracteriza como over-engineering, oude é utilizado mais recursos do que se era necessário.

Já os **Sistemas A** (acute, ou missão crítica), são sistemas que qualquer falha tem o potencial de causar um imenso prejuízo, incluindo a perda de vidas humanas. São sistemas para controlar um carro autônomo, uma usina nuclear, um avião, os equipamentos de uma UTI, um trem de metrô etc. O desenvolvimento desses sistemas devem ser feitos de acordo com processos rígidos, incluindo rigorosa revisão de código e certificação por organizações externas. Nesses sistemas é comum a presença de redundância não apenas em hardware, mas também no próprio software. Por exemplo, o sistema roda de forma paralela em duas máquinas e uma decisão somente é tomada caso ambas instâncias cheguem ao mesmo resultado.

Já os **Sistemas B** (business, ou empresariais), que são sistemas que incluem as mais variadas aplicações corporativas (financeiras, RH, logística, vendas, contabilidade, etc.), sistemas Web dos mais variados tipos, desde sistemas com poucas páginas até grandes redes sociais ou sistemas de busca. Outras aplicações incluem bibliotecas e frameworks de software, aplicações de uso geral (editores de texto, planilhas, editores de imagens, etc.) e sistemas de software básico (como compiladores, gerenciadores de banco de dados, IDEs, etc.). Nesses sistemas, as técnicas de Engenharia de Software podem contribuir com dois benefícios principais:
- 1. Elas podem tornar o desenvolvimento de Sistemas B mais produtivos
- 2. Ekas oidem propiciar a construção de Sistemas B com melhor qualidade, tanto interna como externa.