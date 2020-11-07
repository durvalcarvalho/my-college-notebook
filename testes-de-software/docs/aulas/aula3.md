# Aula 3
## Qualidade e Testes de Software

*Conformidade aos requisitos funcionais e de desempenho, padrões explicitamente documentados e características implícitas que são esperadas por todos os profissionais envolvidos no desenvolvimento de software.*

### Fatores de Qualidade
* Adequação funcional
* Confiabilidade
* Eficiência de Desempenho
* Usabilidade
* Segurança
* Manutenibilidade
* Portabilidade
* Compatibilidade

Problemas em qualquer um desses conceitos deteriora a qualidade. 

### Custo da Qualidade
* Prevenção de defeitos
* Avaliação
* Falhas Internas (antes da entrega)
* Falhas Externas (após a entrega)

### Garantia de Qualidade
* Revisões Técnicas (parte estática)
* Testes dinâmicos
* Análise (geram dados)
* 5W2H
* Medições (métricas para custos, qualidade)

### Princípios básicos da qualidade
* Qualidade é importante desde o início
* Lucros com a qualidade podem demorar a acontecer, mas eles existem
* O cliente vem em primeiro lugar, não quem constrói o produto
* A gerência da qualidade é participativa e respeitosa a todos os envolvidos
* Todos os produtos do desenvolvimento são passíveis de serem avaliados.

### Ciclo de melhoria da qualidade usando testes

Constrói(necessidade do usuário, produto) -> Testa(produto, defeitos) -> Repara(defeitos)

### Análises
* **Estática**: baseadas na avaliação de documentos(requisitos, modelos de projeto, avaliação do código fonte e provas de conceitos). Ao invés de se basearem na execução de um código, procura identificar o seu comportamento quando for executado.

* **Dinâmica**: envolvem a execução de programas de forma a expor possíveis defeitos em seus funcionamentos ou de suas propriedades de desempenho, segurança. Contruídos em plataformas tecnológicas.

### Dimensão da qualidade
*O que é qualidade?*
- O grau no qual o sistema, componente ou processo satisfaz os requisitos especificados.
- O grau no qual o sistema, componente ou processo satisfaz as necessidades ou expectativas do cliente(usuário).
- Satisfazer as necessidades e expectativas do usuário, a fim de prover a sua satisfação.
- Conformidade aos requisitos funcionais e de desempenho, padrões explicitamente documentados e características implícitas que são esperadas por todos os profissionais envolvidos no desenvolvimento de software.

* Interna: está associada ao processo de produção do software
* Externa: está associada ao prduto de software gerado pelo processo de desenvolvimento/manutenção de software
* Em uso: está associada ao quanto os usuários podem atingir sesu objetivos num determinado ambiente e não as propriedades do software em si.

**Objetivos da norma**:
* Identificar e validar requisitos
* Identificar objetivos para os testes
* Identificar critérios para garantia de qualidade e critérios de aceitação
* Proporcionar meios para implementação de esquemas de meljoria contínua da qualidade

**Qualidade externa e interna**:
* Funcionalidade
* Confiabilidade
* Usabilidade
* Eficiência
* Manutenibilidade
* Portabilidade

*A qualidade interna especifica o nível de qualidade requerido sob o ponto de vista interno do produto, ou seja, sobre seu processo de produção*

*Os requisitos de qualidade interna são usados para especificar as propriedades dos produtos intermediários. Esses produtos podem incluir: modelos estáticos, dinâmicos e código fonte*

*Qualidade externa especifica o nível de qualidade requerido sob ponto de vista externo. Eles incluem requisitos derivados das necessidades de qualidade dos usuários, incluíndo os requisitos de qualidade enm uso*

*Qualidade em uso é a visão da qualidade do produto de software do ponto de vista do usuário, quando esta produto é usado em um ambiente e contexto de uso especificados*

Atualmente a norma ISO/IEC 9126, foi substituída pela norma SQuaRE (Série de normas ISO/IEC 25000) com os seguintes benefícios para a área de desenvolvimento de software:

**O Modelo de Qualidade em Uso da Square**

A qualidade em uso define cinco características relacionadas à evolução da interação com um sistema. Essas características são (ISO/IEC-25010, 2011):
* Efetividade: é a característica que diz respeito a capacidade que o software possui de atender a metas específicas sob condições particulares de uso levando em conta a exatidão e a integridade.
* Eficiência: é a característica que diz respeito a capacidade que o software possui de apresentar recursos que foram gastos ao atingir metas específicas sob condições particulares de uso levando em conta a exatidão e a integridade.
* Satisfação: é a característica que diz respeito a capacidade que o software possui de agradar seus clientes diante de um contexto de uso específico.
* Inexistência de risco: é a característica que diz respeito a capacidade que o software possui de minimizar riscos econômicos, humanos, para a vida humana e ambientais em um diante de um contexto de uso específico.
* Cobertura de Contexto em Uso: é a característica que diz respeito a capacidade que o software tem de possuir eficácia, eficiência inexistência de riscos e satisfação do cliente diante de um contexto de uso específico.

**O Modelo de Qualidade do Produto segundo a norma Square**

* Adequação Funcional: característica que diz que um produto ou sistema deve fornecer funções que correspondam as necessidades explicitas e implícitas, quando usado sob condições especificadas.
* Eficiência de Desempenho: característica que estabelece o desempenho de um determinado sistema em relação à quantidade dos recursos utilizados sob condições estabelecidas.
* Compatibilidade: característica que estabelece que um produto, sistema ou componente deve trocar informações e / ou realizar suas funções necessárias, ao compartilhar o mesmo ambiente de hardware ou software.
* Usabilidade: característica que estabelece que um produto ou sistema deve ser usado por um usuário específico para o alcance de metas específicas com eficácia, eficiência e satisfação em um contexto de uso determinado.
* Confiabilidade: característica que diz que um sistema, produto ou componente executa funções específicas sob condições determinadas em um dado período de tempo.
* Segurança: característica que diz que um sistema ou produto protege as informações e dados, de modo que as pessoas, outros produtos ou sistemas possuam o grau de acesso de dados apropriado para os seus tipos e níveis de autorização.
* Manutenibilidade: característica que diz que um sistema possui a capacidade de ser modificado com determinado grau de eficácia e eficiência por um conjunto de mantenedores.
* Portabilidade: característica que diz que um sistema, produto ou componente pode ser transferido a partir de um hardware, software ou outro ambiente operacional com determinado grau de eficácia e eficiência.

### Comparação entre a Square e a ISO / IEC 9126 

| #   | Tem na Square                | Como era na ISO 9126                 | Notas de Mudança                                                                                                                                                                                                                 |
|-----|------------------------------|--------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 1   | Qualidade em Uso             | Qualidade em Uso                     | Manteve o nome, porém uma subcaracteristica foi acrescentada e houve mudanças nas subcaracterísticas  que já existiam.                                                                                                           |
| 1.1 | Efetividade                  | Efetividade                          | Não houve alterações.                                                                                                                                                                                                            |
| 1.2 | Eficiência                   | Produtividade                        | Nome alinhado com eficiência em ISO / IEC 25062 e ISO 9241-11.                                                                                                                                                                   |
| 1.3 | Inexistência de Risco        | Segurança                            | O conceito de segurança em nível de uso foi mudado e passou a abranger a capacidade que o sistema  tem de lidar com riscos. Além disso foram acrescentadas subcaracterísticas.                                                   |
| 1.4 | Cobertura do Contexto em Uso | Não existia                          | Foram adicionadas na qualidade em uso como subcaracterísticas completude e flexibilidade.                                                                                                                                        |
| 1.5 | Satisfação                   | Satisfação                           | Não existiam subcategorias                                                                                                                                                                                                       |
| 2   | Qualidade do Produto         | Qualidade externa/ Qualidade interna | Ambos os conceitos de qualidade interna e externa foram extintos e combinados em um único conceito  chamado de qualidade do produto.                                                                                             |
| 2.1 | Adequação Funcional          | Funcionalidade                       | Além de ter sido renomeada para adequação funcional para evitar confusão com outros sentidos de funcionalidade as subcaracteríticas que existiam na ISO 9126 foram substituídas por completude, corretude e adequação funcional. |
| 2.2 | Eficiência de Desempenho     | Eficiência                           | Foi renomeado para evitar conflito com a definição de eficiência na ISO/IEC 25062, além disso, foi adicionada uma nova subcaracterística chamada capacidade.                                                                     |
| 2.3 | Compatibilidade              | Não existia                          | Nova característica. Inclui como subcaracterísticas interoperabilidade e co-existência.                                                                                                                                          |
| 2.4 | Usabilidade                  | Usabilidade                          | Algumas subcaracterísticas foram renomeadas. A subcaracterísticaAcessibilidade foi acrescentada.                                                                                                                                 |
| 2.5 | Confiabilidade               | Confiabilidade                       | Foi acrescentada a subcaracterística de disponibilidade.                                                                                                                                                                         |
| 2.6 | Segurança                    | Subcaracterística de Funcionalidade  | Foi adicionada como uma característica, em vez de uma subcaracterística de funcionalidade, com subcaracterísticas confidencialidade, integridade, não-repúdio, prestação de contas e autenticidade.                              |
| 2.7 | Manutenibilidade             | Manutenibilidade                     | Foram adicionadas duas novas subcaracterísticas a reusabilidade e a modularidade.                                                                                                                                                |
| 2.8 | Portabilidade                | Portabilidade                        | A subcaracterística co-existência foi movida para a característica de compatibilidade.                                                                       


<br>

**Link**: https://web.microsoftstream.com/video/d0e540b7-2e19-42c5-8a7d-e51437ba73af

**Slides**: https://aprender3.unb.br/pluginfile.php/331063/mod_resource/content/3/A5%20-%20TS%20-%20206580_Conceitos%20Fundamentais%20%282%29%20-%20Qualidade%20e%20Testes%20de%20Software.pdf
