# On Software Engineering Repositories and Their Open Problems

## Resumo

Na última década, um grande número de repositórios de software foi criado diferentes fins. Neste artigo, apresentamos um levantamento dos repositórios disponíveis publicamente e classificamos os mais comuns, bem como discutimos os problemas enfrentados pelos pesquisadores ao aplicar o aprendizado de máquina e técnicas estatísticas neles.

## 1. Introdução

Muitas pesquisas no campo da Engenharia de Software Empírica são baseadas em estudos de caso ou em pequenas amostras. Por exemplo, Mockus et al. descobriram que software livre e softwares open source continham menos defeitos do que os sistemas proprietários, baseando suas conclusões em dois casos de projetos de código aberto (Apache e Mozilla). Outro exemplo é a distribuição de bugs no software, que foi recentemente descoberto como uma distribuição Weibull com base em alguns lançamentos de um único estudo de caso (IDE Eclipse). Mas esse resultado foi refutado por um relatório com resultados contraditórios, afirmando que a distribuição de bugs também pode ser descrita usando outros modelos estatísticos.

A pesquisa empírica baseada em pequenos conjuntos de dados terá que refutar resultados contraditórios devido à falta de generalização. No entanto, reunir uma grande quantidade de software e dados para estudos empíricos pode ser uma tarefa complicada, propensa à introdução de erros não intencionais e potencialmente causando mais problemas do que criando solução.

A popularização do fenômeno de desenvolvimento de software livre e código aberto disponibilizou grandes quantidades de dados que são úteis para fins de pesquisa. Assim, podemos encontrar diversas oportunidades na comunidade de pesquisa para obter dados para grande amostras de projetos de software, e de forma integrada e estruturada, para que esses repositórios possam ser facilmente consultados para a extração de informações.

Neste artigo de posição, queremos fornecer uma revisão preliminar e uma classificação / caracterização dos repositórios atualmente disponíveis, bem como destacar os problemas mais comuns que os usuários e pesquisadores enfrentam ao lidar com tais repositórios.

## 2. Repositórios de Engenharia de Software

Os projetos de software deixam uma trilha em diferentes tipos de repositórios, e essa trilha pode ser usada para reconstruir a história do projeto e estudar os processos de desenvolvimento e manutenção de software. Classificamos esta trilha nas seguintes categorias:

### 2.1. Código fonte

Essa é o prodjuto mais óbvio de um projeto de software. O código fonte pode ser estudado para medir propriedades como tamanho e complexidade.

### 2.2. Sistema de Gerênciamento de Código Fonte (SCM)

Repositórios que possuem um SCM permitem guardar todas as mudanças realizadas no código durante o projeto. OS SCM permitem também guardar metadados como autor, data, razão da mudança, etc. 

### 2.3. Sistema de rastreamento de Problemas (Issues)

Bugs, defeitos e requisição de usuários são gerenciadas por esse sistema, onde os usuários e desenvolvedores podem preencher "cartões" com os problemas encontrados ou com funcionalidades novas desejadas. Todos esses cartões são mantidos por esse sistema, inclusive informações associadas como comentários, data de relato, tickets (labels), etc.

### 2.4. Mensagens entre usuários e desenvolvedores

A maioria dos softwares livres e/ou softwares de código aberto, possuem um canal de comunicação aberto que possibilita todos os interessados visualizar as mensagens antigas e criar novas conversas.

### 2.5. Metadados sobre o projeto

Todo projeto possui metadados relacionados que pode ser utilizado durante uma pesquisa. Esses dados podem ser o público alvo do projeto, a linguagem de programação utilizada, o domínio da aplicação, a licença, etc.

### 2.6. Dados de Uso

Alguns projetos costumam manter dados relacionados ao uso da aplicação. Exemplos desses dados de uso é a quantidade de pessoas com software instalado, números de downloads novos, tempo médio de uso, etc.

[...]


