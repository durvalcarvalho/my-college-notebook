# Gerência de Qualidade de Software

## Impactos da baixa qualidade de um software
### Cliente
* Perda de negócios
* Perda de dados
* Perda de tempo
* Perda de dinheiro

### Empresa
* Custos: maior necessidade de manutenção, devolução de dinheiro, pagamento de multas
* Processos Judiciais
* Má reputação
* Perda de clientes


*Qualidade é o grau em que o sistema, componente ou processo atende (1) os requisitos especificados e (2) as expectativas e necessidades do cliente ou usuário.*

### Qualidade do Produto
Fatores que afetam a qualidade de um produto, sendo que um está relacionado com o outro
* Tecnologia de desenvolvimento
* Qualidade das pessoas
* Custos, tempo e cronograma
* Qualidade do Processo

### Custos
* Prevenção: custos para que sejam evitados problemas de qualidade
* Avaliação: custos para que seja avaliado o produto e para assegurar sua qualidade
* Falha: para resolver inconformidades

# Aulas
- [Qualidade de Produto](univesp/qualidade.md)

# Gestão da Qualidade
## Garantia da Qualidade (Plano, Padrões e Contrato)
*Busca garantir que os produtos e o processo sigam as cláusulas e os planos estabelecidos*

* Provê compreensão sobre o processo e os produtos
    * Garantia da qualidade do produto: Os artefatos seguem os padrões acordados?
    * Garantia da qualidade de processo: As atividades planejadas/definidas estão sendo executadas?

* Divulgação para os stakeholders, funciona como um representante do cliente.
* Deve ser uma equipe independente, tendo visão diferente dos desenvolvedores, organizacionalmente acima do gerente de projetos. Em alguns casos essa independência não é possível, mas a cultura de qualidade deve ser mantida.

### Atividades
* Planejar as atividades de Garantia de Qualidade
* Avaliar produtoserviço
* Avaliar processo
* Gerenciar registros e relatórios de garantia da qualidade
* Tratar incidentes e problemas
* Treinamentos

### Planejamento
* Dirige as atividades de garantia da qualidade: Padrões e atividades a serem seguidos e executados.
* Deve ser definido para cada projeto: por motivos de escopo de projeto, processos e questões estruturais.


## Controle de Qualidade (Requisitos e Necessidades)
* Busca garantir que os processos e produtos cumpram os objetivos de qualidade.

### Verificação
*Garantir que os produtos de trabalho selecionados cumpram os seus requisitos especificados*<br>
*O software construído está certo?*

Requisitos podem ser: requisitos de software, condições impostas, padrões, práticas e convenções)

Exemplos:
* Definição e análise de requisitos: Model Checking
* Projeto: Verificação arquitetural usando OTAM.
* Implementação: Integração contínua (revisão do código existente), programação em pares (o par revisa o código gerado).

### Validação
*Demonstrar que o produto ou componente do produto cumpre o uso pretendido quando colocado em seu ambiente desejado*<br>
*Está sendo construído o software certo?*

Analisa se o produto atende as necessidades dos Stakeholders.
* Análise Estática: Não se executa o software. Ex: Revisão, Auditoria
* Análise Dinâmica: Executa o produto. Ex: Testes

Exemplos:
* Definição e análise de requisitos: Protótipos, simulações.
* Projeto: discussão com usuários.
* Implementação: demonstrações do que está sendo implementado.
* Teste: Validação com testes de aceitação.
* Entregas curtas
