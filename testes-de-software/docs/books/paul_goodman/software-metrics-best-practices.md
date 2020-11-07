# Seção 2 - Construindo e implementando um programa de métricas de software
[...]
## 10. Design de Componente
[...]

## 10.3. Definição de Modelos, Objetivos, Questões e Métricas

O que é pretendido é discutir a derivação de métricas ou medidas e, então apoiar essa discussão com alguns exemplo. Lembre-se de onde estamos: identificamos os requisitos para informações e técnicas baseadas em métricas vinculadas a grupos de cliente.

Isso pode variar de generalidades, como "melhorar o processo de estimativa de custos", a requisitos muito específicos, como "fornecer informações ao Diretor de Desenvolvimento de Sistema que quantifica a produtividade alcançada de todas as equipes de desenvolvimento de produto trimestralmente". Os clientes principais relacionados podem ser os gerentes de projeto (porque eles são as pessoas que estão fartos de serem responsabilizados por estimativas ruins) e o Diretor de Desenvolvimento de Sistema.

Você também tem conversado com pessoas na organização para derivar esses requisitos, de modo que tem um grande ativo disponível: contato pessoais.

Você tem, em termos de Paradigma de Objetivos, Questões e Métricas de Basili e Rombach (GQM) os objetivos definidos. Você tembém tem os meios pelos quais pode resolver as questões. Antes de fazer isso, certifique-se de que as metas que você identificou são metas de medição. As pessoas costumam definir uma meta geral para você que não é adequada como um requisito em um programa de métricas. Por exemplo, um gerente pode alegar que sua meta é aumentar a produtividade do desenvolvimento em 25% em 2 anos. Tudo bem, como uma meta estratégica para esse gerente, isso é aceitável, mas não ajuda em nada um programa de métricas. Infelizmente, as métricas de software não fazem o trabalho dos gerentes, e eles precisam perceber isso.

Os requisitos de medição aceitáveis dentro desta meta estratégica do gerente podem incluir "fornecer um mecanismo pelo qual os níveis de produtividade atuais e futuros possam ser avaliados", seguido por "fornecer técnicas baseadas em métricas que podem reduzir o retrabalho no desenvolvimento".

Isso não quer dizer que os programas de medição não incluirão alguns benefícios diretos para o processo de desenvolvimento, mas apenas algumas partes de um programa de métricas de software podem fazer isso. Os exemplos incluem técnicas baseadas em métricas que podem ser usadas por engenheiros e gerentes no dia-a-dia para melhorar diretamente as entregas intermediárias ou finais; e, medições que visão identificar as áreas dentro de produtos genéricos que estão causando a maioria dos problemas, a ideia é que estas possam ser reescritas para reduzir o esforço de retrabalho ou teste. Os outros componentes de uma iniciativa de medição por exemplo, melhorar a estimativa de custos e o controle do projeto ou fornecer informações de gerenciamento geral, não irão melhorar as coisas diretamente. O que esses componentes podem fazer é permitir que os gerentes gerenciem com mais eficácia e é isso que melhora o processo.

Então tenha cuidado. Não seja forçado a uma situação emq ue você tem que arcar com o que são essencialmente responsabilidades de gerenciamento para o desenvolvimento; você tem o suficiente para fazer apenas fornecendo-lhes as ferramentas de que precisam para fazer seu trabalho.

Agora, assumindo que você foi cuidadoso ao definir os requisitos que foram colocados no programa de métricas, agora você pode avançar para a próxima etapa no da definição de modelo, a classificação de requisitos.

Se você observar os vários requisitos que você identificou, você notará semelhanças entre eles. Essas semelhanças permitirão que você classifique seus requisitos em um pequeno número de categorias principais. Um conjunto típico de macro-requisitos são apresentados abaixo:

- Melhorar a estimativa de custo, tamanho e duração
- Melhorar os procedimentos de controle de projeto
- Fornecer informações gerenciais sobre desempenho, produtividade e qualidade alcançada
- Previsão de atribuitos de qualidade antes o lançamento do produto
- Avaliação (verificação) dos requisitos de projeto.

De modo geral, o fornecimento de informação sobre a qualidade alcançada será dividido em uma série de "-idades"(manutenabildiade, recuperabilidade, memorabilidade, ...) específicas.

A razão para este agrupamento de requisitos é permitir a satisfação de tantos requisitos individuais quanto possível no menor tempo possível. Em quase todos os casos que tenho visto, o número de clientes e requisitos individuais que um programa de métrica de software deve atender excede em muito os recursos disponíveis se esses requisitos forem tratados individualmente. Então a única solução que parece funcionar de forma eficaz é oferecer soluções genéricas para esses requisitos dentro da organização, que podem ser adaptados para atender às necessidades de clientes específicos.

Uma questão que essa abordagem levanta está relacionada ao conjunto de clientes que foi identificado anteriormente. O que acontece com esses indivíduos e grupos? Cada cliente que está vinculado a um requisito genérico ou macro torna-se uma "autoridade de ponto de vista" (viewpoint authority) para aquele requisito.

Para explicar este conceito vamos considerar o caso de melhoria da estimativa de custo. Vários grupos funcionais dentro da organização podem ter expressado isso como um requisito e podem incluir:

<div style="padding-left: 5%;">
Gerentes de projeto que precisam preparar estimativas. Por enquanto, assumiremos que este é um grupo de clientes que atualmente usa as mesmas técnicas e opera sob as mesmas restrições. Embora seja provavelmente uma simplificação da realidade, ainda nos permite ilustrar o ponto.

Pessoal de Marketing, que tem que preparar propostas para o trabalho.

O gerente de produto que deseja ter acesso a um estimativa melhor.

O diretor de Desenvolvimento de Sistema, que está farto de outros diretores dizendo a ele que o departamento está custando dinheiro por não cumprir as promessas feitas ao clientes.

Os clientes extermos

</div>

Cada um desses grupos tem interesse em melhorar o processo de estimativa de custo e cada um terá informações sobre os requisitos para essa melhoria. Não faz nenhum sentido tentar satisfazer esses requisitos individuais separadamente quando um única solução genérica irá satisfazer a maioria deles. O que devemos perceber é que cada grupo terá uma visão do requisito e da solução que é diferente dos outros grupos. Nesse sentido, todos têm um ponto de vista sobre o requisito. Devemos também perceber que cada grupo pode ter subgrupos dentro dele e, para reconciliá-los, é uma boa ideia identificar ou nomear uma autoridade de ponto de vista. Espera-se que esse indivíduo expresse as necessidades do grupo e represente seus interesses durante o processo de satisfação desses requistos.

Pode haver conflitos entre as várias autoridades de ponto de vista e isso pode ser resolvido identificando uma autoridade do cliente que é a pessoa com a palavra final na resolução de tais conflitos. O candidato ideal para a função de autoridade do cliente é o cliente principal para a solução de requisitos específicos que você já identificou.

Outra vantagem que vem do agrupamento de requisitos é que você pode usar mais facilmente a solução de outras pessoas. Você já tem o conceito de solução sob medida para os vários ponto de vista, mas também pode pegar uma solução externa, como um pacote de estimativa de custo que roda em um PC, e personalizar seu uso para o contexto da organização. O agrupamento de requisitos ajuda porque facilita a identificação de soluções externas.

Tendo realizado esse agrupamento de requisitos, você pode começar a percorrer a questão ou tarefa de modelagem de definição métricas.

Quase todos os requisitos estabelecidos em um programa de métricas de software estão relacionados aos atributos do processo de desenvolvimento ou de seus produtos. Na verdade, o reconhecimento disso foi um passo fundamental no uso de Métricas de Software. O pensamento atual parece ter adicionado atributos relacionados aos Recursos também. Este é mais um grande subgrupo de atributos dentro da divisão de processo/produto, mas tal visão pode ser útil. Não caia na armadilha de pensar que isso resolverá todos os seus problemas ou que essa mudança levará automaticamente a métricas; não vai. Nem deve perder tempo tentando categorizar as métricas como medidas de produto ou de processo; essa abordagem fornece muito pouco valor agregado.

O que pode ser categorizado é o requisito, mas isso é tratado identificando o atributo de interesse dentro desse requisito, por exemplo, a produtividade do processo de desenvolvimeto como um requisito orientado ao processo.

Agora, para qualquer atributo dentro de um requisito, há três itens que precisam ser considerados. O primeiro é determinar o que se entende por aquele atributo, ou seja, você precisará definir o atributo. Pode ser que isso já tenha sido feito quanto você estava considerando o conjunto de definições iniciais durante o último estágio, mas se isso não foi tratado, é vital que seja feito agora. Você precisa ser muito claro sobre o que isso significa. Os atributos que parecem tipificar o problema no momento "manutenibilidade", "ampliação" e "extensibilidade". Qualquer um desses termos aparentemente inócuos pode ser usado por diferentes pessoas para se referir ao mesmo atributo e os indivíduos argumentarão fortemente em favor de sua preferência.

Tenho certeza de que o debate dentro da indústria continuará por vários anos, e pode nunca ser resolvido para a satisfação de todos, mas você não pode esperar por tal acordo. A abordagem que adotei com um grau razoável de sucesso no passado é definir atributos específicos dentro de uma organização. Até mesmo isso pode envolver discussão e debates, mas é prático conduzir definições para atributos, talvez acordadas e endossadas pelo Metrics Coordination Gruop, em um espaço de tempo bastante curto.

No que diz respeito às váris "-idades" (manutenabildiade, recuperabilidade, memorabilidade, ...), algumas definições estão disponíveis na ISO 9126, e podem ser usadas como base para suas próprias definições.

Tendo definido o atributo, você deve agora perceber que há duas áreas de interesse para tal atributo. Primeiro, você pode desejar monitorar ou avaliar o atributo. Como alternativa, você pode desejar aplicar uma previsão ao atributo. Um exemplo esclarecerá o problema. A confiabilidade do sistema de software é um atributo que preocupa muitas organizações. A confiabilidade pode ser definida como: 

> "Um conjunto de atributos que influenciam a capacidade do software de manter seu nível de desempenho sob condições estabelecidas por um período determinado de tempo" <br>
> -- <cite> ISO 9126 </cite>

Ou a minha própria definição preparada antes de ter conhecimento da definição da ISO

> "A capacidade de um componente de software de executar suas funções em um nível especificado, ou padronizado para 100%, dentro de um determinado ambiente."

Pode haver um requisito em uma organização para monitorar a confiabilidade de seus produto de software no campo ao longo do tempo ou entre versões de construção. Essas informações permitem que a redução da confiabilidade seja tratada antes que se torne um desastre ou, se a confiabilidade estiver aumentando, pode ser usada para ajudar no mercado de produtos geradorres de renda.

A maioria das organizações também está interessada em criar confiabilidade em seus produtos. Isso implica que as condições existentes nos projetos, por exemplo, afetam a confiabilidade do produto entregue. Portanto, a organização pode desejar medir a extensão do acoplamento e coesão dos componentes no projeto para prever a confiabilidade do campo. Pode até ser tão simples quanto usar falhas descobertas e corrigidas durante o teste como uma previsão do número de falhas que serão descobertas por usuário ou cliente.

A abordagem usada para satisfazer essas duas demandas é muito diferente e eu sugiro que você trate o monitoramento ou avaliação e revisão de um atributo como requisito separado dentro do programa de métricas.

Refinar os requisitos dessa forma, por meio de definição de atributos e determinar se você deve monitorar ou prever, permitirá que você identifique os processos que precisa considerar e, portanto, os produtos de processos aos quais aplicará a medição.

A próxima etapa é derivar um modelo que satisfaça o requisito. Para fazer isso, você precisa identificar o que pode ser chamado de característica do processo ou produto que afetam o atribuito em que você está interessado. A modelagem por sua própria natureza é uma atividade humana e, portanto, é um tanto subjetiva. Novamente, o melhor conselho que posso dar é falar com as pessoas que estão em melhor posição para responder à pergunta: "o que afeta esse atributo?". Em outras palavras, converse com as pessoas que estão envolvidas no processo.

Identificar as características de interesse pode fazer com que você faça ainda mais definições, por exemplo, o que significa tamanho ou complexidade, mas lembre-se de ser pragmático e ouvir com atenção. Se você tiver dúvidas sobre como apresentar uma definição, chame-a de 'definição em trabalho'. Você não está procurando a perfeição, você está procurando algo que lhe permitirá satisfazer um requisito real e importante.

Depois de obter um conjunto de características, você pode começar a combiná-las na forma de um modelo. Nesse contexto, um modelo é uma combinação matemática de características resultando em uma função para a qual a variável dependente fornece informações sobre o atributo de interesse. O modelo pode, e talvez deva, incluir técnicas construídas em torno da análise dessa função.

Como já disse, modelar é uma atividade humana e também, por definição, inclui um elemento de simplificação. Não tente formar o "modelo perfeito" ou você estará firmemente no caminho da frustração e do desespero. As métricas que você obtém provavelmente não contarão toda a história sobre qualquer atributo; a verdadeira questão é: eles fornecem mais informações do que você tem agora e essas informações são úteis para a organização? Esta simplificação pode significar que você ignora algumas das características identificadas. Lembre-se de que modelos mais simples são provavelmentes melhores do que os mais complicados.

Se você achar que seus modelos não são suficientemente sofisticados para poder fornecer as informações de que você precisa, talvez porque uma característica seja mais importante do que você supôs, então MUDE O MODELO! Não caia na armadilha de se apegar ao seus modelos somente por que gastou tempo e esforço desenvolvendo-os. O grande poder dos modelos é que eles podem ser desenvolvidos e ampliados de forma incremental.

Seu modelo, ou pelo menos o componente do modelo que é uma função matemática, fornece a métrica composta que você usará para medir um atributo específico.

Olhando para os componentes da métrica composta, você pode identificar as métricas básicas, os dados brutos, que você precisará coletar para fornecer informações sobre um determinado atributo. Resta implementar o uso das métricas básicas e compostas e, em seguida, avaliar os resultados. A etapa de implementação é difícil.

Como você pode ver, derivar métricas é fácil! Bem, talvez você ainda tenha algumas dúvidas, então vamos tentar com alguns exemplos.

Suponha que temos um requisito de um líder da equipe de desenvolvimento de produto para uma única medida para monitorar o desempenho do desenvolvimento de software. Formulei isso para pedir uma única medida para simplificar deliberadamente as coisas, pois desejo ilustrar a técnica de modelagem, e não fornecer uma nova métrica. Na verdade, vamos acabar com uma métrica muito antiga nesse caso! Tal requisito pode vir de uma série de líderes de equipe e requisitos semelhantes também podem vir de outros grupos de equipe, como a gerência sênior que deseja monitorar o desempenho de várias equipes. A título de ilustração, vou falar apenas sobre essa única fonte de requisito, um gerente responsável por várias equipes, embora as etapas e os princípios sejam os mesmos.

Esse requisito pode ser classificado como uma métrica de entidade comercial porque se relaciona a vários projetos pelos quais a equipe é responsável. Tudo o que essa classificação implica é que podemos ver o que outras organizações estão fazendo na mesma área, mas, é claro, para sermos capazes de ver que precisamos ter alguma ideia do que é essa área. Também podemos identificar a autoridade do cliente e os pontos de vista para este requisito. O principal candidato para o papel de autoridade do cliente parece ser o gerente, pois o pedido veio dele. Existem outros pontos de vista neste exemplo bastante simples? Certamente há pelo menos um outro ponto de vista: os engenheiros que estarão contribuindo com a medida! Dependendo do tamanho da equipe, pelo menos uma autoridade de ponto de vista deve ser identificada dentro do grupo. Este indivíduo atuará como seu porta-voz, embora outras pessoas também devam ser atendidas.

Agora precisamos identificar e definir o atributo de interesse. O desempenho do desenvolvimento pode ser definido como:

> "A eficácia da execução de atividades de desenvolvimento de software em um determinado ambiente"

A eficácia pode, por sua vez, ser definida como o grau em que um efeito desejado é produzido. Um efeito é qualquer coisa provocado por uma causa, um resultado. Acho que é hora de falar com nossos clientes e autoridades de ponto de vista.

Podemos muito bem descobrir que o resultado que eles almejam é fornecer software de qualidade a um custo mínimo. A discussão também pode revelar que, dos dois principais elementos dentro desta meta, eles sentem que a qualidade é importante e que estão dando passos contínuos para melhorar isso, mas o que eles realmente querem mostrar é que também estão melhorando sua capacidade de reduzir custos. Isso pode levar a um refinamento em nosso requisito básico de medição para monitorar o desempenho do desenvolvimento, sendo a versão mais refinada:

> "Fornecer um único indicador de alto nível de desempenho de desenvolvimento que descreve a eficácia da produção".

Agora estamos chegando ao cerne da exigência, estamos falando sobre a eficácia da produção; isso soa como produtividade para mim. Bem, eu disse que seria uma métrica antiga.

O que temos agora é um atributo identificado e uma definição do que queremos dizer com esse atributo. Munidos disso, podemos começar a olhar ao redor do setor e de outros setores para ver como eles medem a "produtividade". Também podemos voltar e falar com nossos clientes e autoridades de ponto de vista novamente para fazer a pegunta: "o que é que afeta a produtividade, o que colocamos e o que ganhamos? (What do we put in and what do we get out)". Em outras palavras, quais são as características que afetam a produtividade?

Com muitos exemplos que você encontrará, há duas maneiras de responder a essa pergunta sobre as características. Uma é modelá-los internamente, a outra é descobrir qual é o "estado da arte" ou "sabedoria aceita" em outras organizações e setores. Para os fins desse exemplo, daremos uma olhada na primeira abordagem.

A produtividade parece ter dois elementos: o que aplicamos e o que obtemos em termos do que o processo de desenvolvimento de software consome e o que ele oferece? Colocamos pessoas e tempo que podemos chamar de "esforço", equipamentos, suporte gerencial e suporte organizacional, cobrindo coisas como departamento de pessoal, acomodação e viagens. Desses elementos de custo, você quase certamente descobrirá que o mais significativo é o esforço. Você também provavelmente descobrirá que seus contadores têm técnicas pelas quais podem repartir os outros elementos de custos em custos de esforço para dar um salário elevado para qualquer indivíduo ou grupo. Isso simplifica as coisas porque podemos, talvez, apenas usar o custo do esforço como o componente "o que investimos" de uma medida de produtividade.

Agora, quais são as características que contribuem para o que obtemos? Isso pode incluir a quantidade e os detalhes da documentação necessária; o tamanho do código e a complexidade desse código. Conversando com nossos engenheiros, podemos descobrir que a documentação é relativamente padrão em todos os projetos e, se for esse o caso, podemos decidir fatorar esse elemento. E quanto ao código? Agora estamos envolvidos na análise de como vamos combinar nossos aspectos, mas você frequêntemente descobrirá que essa sobreposição entre a identificação de características e a combinação acontece.

No que diz respeito ao código, você pode ver o tamanho do sistema como sendo importante e a complexidade sendo igualmente importante, mas novamente, conversar com os engenheiros e os líderes de equipe pode indicar que a complexidade entre os projetos é bastante constante, especialmente em uma situação de aprimoramento. Portanto, nesse caso, poderíamos simplismente usar o tamanho do código? Você pode decidir verificar isso procurando uma relação entre o tamanho do código e o esforço de desenvolvimento.

A pressão de tempo, ou mais corretamente a pressão de tempo variável, nos projetos também é vista como tendo um grande impacto no esforço. Se for aplicada pressão de tempo e o projeto tiver que ser concluído em um prazo muito curto, então, desde que o escopo ou os requisitos não sejam reduzidos, a única variável que pode ser ajustada é o esforço. Apesar do argumento de que dedicar esforço a um problema não reduzirá a duração, a realidade é que essa é a única opção disponível e que grandes projetos podem ser entregues com relativa rapidez usando mais pessoal. O ponto a ser lembrado é que a relação não é linear, ou seja, se um projeto é necessário na metade do tempo, vocẽ não pode simplesmente dobrar o tamanho da equipe. Você precisa quadruplicar o tamanho da equipe e adicionar mais recursos apenas para resolver o problema de comunicação. Você provavelmente pagará por essa abordagem de desenvolvimento de sistema em termos de produtividade reduzida.

No entanto, você frequentemente descobrirá que a pressão de tempo operando em projetos é relativamente constante dentro, e isso é importante, de um único ambiente, por exemplo, um grupo de desenvolvimento de ferramentas ou um grupo de produto específico lidando com releases contínuas. Mais uma vez, esse efeito pode frequentemente ser desconsiderado. Nesse sentido, podemos simplificar justificadamente nosso modelo de produtividade.

Como alternativa, você pode simplismente observar o que outras organizações estão fazendo e chegando à mesma conclusão, a produtividade é normalmente expressa como:

<div align='center'>
Produtividade = Produto de Trabalho / Custo do Produto
</div>

Uma proporção é usada porque você deseja comparar o que obtemos como o que investimos. De um modo geral, a produtividade no desenvolvimento de software é expressa como:

<div align='center'>
Produtividade = Tamanho do projeto / Esforço do Projeto
</div>

Este é o seu modelo básico de produtividade e é ele que será usado para derivar as métricas compostas e básicas. Essencialmente, isso significa que precisamos mudar os componentes generalizados do modelo, tamanho do projeto e esforço, para medidas específicas e definidas.

Os candidatos óbvios para o tamanho do projeto são linhas de código ou "Pontos de Função", na verdade o número sem unidade que resulta da aplicação da Análise de Pontos de Função a uma especificação de requisito, design de alto nível ou sistema produzido.

Ambas as medidas podem ser definidas de forma a atender a projetos de melhorias. Para linhas de código, você pode considerar as linhas adicionadas, excluídas e alteradas e o mesmo princípio pode ser aplicado à análise de pontos de função.

Para esforço, podemos escolher "dias de engenharia" ou "dias de pessoas" (pode ser outros períodos tempo também, como meses e anos). Minha própria recomendação para uma medida de esforço seria usar horas por pessoa. Isso elimina muitas das diferenças e debates sobre o que constitui um dia de pessoa. Suponha que decidimos usar linhas de código e horas por pessoa como os componentes de nossa métrica composta, fornecendo: 

<div align='center'>
    Produtividade = Linhas de código / Pessoa Hora
</div>

Estamos quase lá agora. As métricas básicas ou itens de dados brutos que precisam ser coletados quase saem deste composto. Há uma etapa muito importante que precisa ser abordada: temos que definir nossas métricas básicas de forma a torná-las significativas e sua coleta viável dentro de nossa organização. Isso é verdade para quase todas as métricas que você usará no programa. Mais uma vez, você precisará conversar com as pessoas que estão ou estarão envolvidas no programa para ter certeza de que o que você propõe é prático, mas depois de definir as métricas básica, você concluiu a derivação da métrica.

Bem, quase lá! Você precisa se certificar de que o que você definiu é prático e esta é outra área onde os exercícios dos testes-piloto podem ser extremamente úteis. Você também precisa considerar a análise e o feedback dos dados que coletou. Não caia na armadilha de muitas iniciativas de métricas que acabam com um grande quantidade de dados que não estão sendo usados pela organização. Terei mais a dizer sobre esses assuntos mais tarde. Você também deve considerar a implementação de processos que irão facilitar a coleta, análise e feedback de dados. mais uma vez, abordaremos este tópico mais tarde.

Vamos tentar outro exemplo da técnica de derivação. Desta vez, vou reduzir a discussão ao básico. Nossa exigência é fornecer informações à alta administração sobre a qualidade de campo dos produtos de software. A discussão indica que nosso cliente é o Diretor de Desenvolvimento de Sistema e está interessado na confiabilidade percebida pelo cliente. A confiabilidade é vista como o principal fator de qualidade neste caso. O requisito pode ser classificado como uma métrica de entidade comercial.

O atributo de confiabilidade pode ser definido como antes, "a capacidade de um componente de software", nesse caso o sistema entregue ao cliente, "de executar suas funções em um nível específico requisitado em um determinado ambiente".

Quais são as características que afetam a confiabilidade? O que há no produto que oferecemos que pode afetar a confiabilidade? Os grandes sistemas tendem a ser menos confiáveis do que os pequenos, portanto, o tamanho do produto pode ser considerado. A complexidade do produto pode ser importante e o grau de uso do produto também pode ser um atributo possível. Outras possibilidades incluem a pressão de tempo aplicada ao projeto de desenvolvimento, o grau de teste, a extensão em que outras técnicas de verificação e validação foram usadas, etc.

Também precisamos considerar as características do produto que indicam o nível de confiabilidade. Um candidato óbvio inclui o tempo entre as falhas e, por favor, observe que o tradicional "Tempo médio entre falhas" pode não ser apropriado, pois o uso de uma média depende da distribuição da frequência do tempo entre as falhas. Outra possibilidade é o número de "panes" (crashes) do sistema durante um determinado período de tempo ou o número de falhas levantadas pelo usuário. Observe que estou usando falhas, em vez de bugs/defeitos. Lembre-se de que o cliente levantará relatórios de falhas, mas alguns dessas falhas serão duplicadas.

Essa informação em si pode ser importante para outras medidas, por exemplo, para algumas medidas de usabilidade, mas eu sugiro que a confiabilidade seja uma função de falhas validadas e não duplicadas, das falhas detectadas pelos usuários.

Tentar combinar todos esses aspectos resultaria em uma métrica muito complexa e, provavelmente, em um membro da equipe de métrica muito frustrado, portanto, mantenha a simplicidade. Converse com os gerentes e, se possível, com os usuários e indique os aspectos mais importantes. Eu sugiro que a confiabilidade de campo de um produto pode ser modelada por:

<div align='center'>
    Confiabilidade do Produto = Defeitos detectados pelos usuários / (Tamanho do Produto * Uso do produto)
</div>

O que esse modelo diz é que a qualidade ou confiabilidade é uma função da "dor" validada sofrida pelo cliente a ponto de ele reclamar; o tamanho do produto, que incluo para poder fazer comparações mais significativas entre os produtos; e, o grau em que esse produto é usado. Isso pode funcionar para um único produto, mas o requisito é para uma métrica de entidade comercial que será usada por um gerente sênior. Para atender a esse requisito, sugiro que uma confiabilidade média do produto seja derivada de uma amostra de valores de confiabilidade do produto obtidos ao longo de um período de meses. O tipo de média depende da distribuição de frequência. Para uma distribuição normal ou gaussiana, o valor médio é o mais apropriado, mas para distribuições distorcidas as médias das medianas ou modais são mais apropriadas. Eu sugiro fortemente que você converse com um estatístico sobre isso ou pelo menos consulte livros didáticos de estatística. 

Agora temos nosso modelo e alguns componentes de nossa métrica composta. Falhas detectadas pelo usuário com as quais posso conviver em meu compósito; o tamanho do produto posso definir com linhas de código ou, mais preferencialmente na minha opinião, pontos de função; e uso que posso definir como o número de sites nos quais oferecemos suporte ao produto.

Então os componentes das métricas são:
A confiabilidade é a média da confiabilidade do produto para uma amostra em um determinado momento, onde a confiabilidade do produto é definida como:

<div align='center'>
    Confiabilidade do Produto = Defeitos detectados pelos usuários / (Pontos de função do produto * N° de sites suportados)
</div>

Para obter nossas métricas básicas, temos que definir os componentes da confiabilidade do campo em termos mais concretos. Nesse caso, fico tentado a simplesmente alterar as definições para dizer que as falhas detectadas pelo usuário são acumuladas ao longo de um período de três meses, enquanto os outros dois componentes, ou seja, pontos de função do produto e sites suportados, são um instantâneo, provavelmente tirado no ponto de entreta ou, talvez, no final do período de três meses.

E é isso! Sempre que você define uma métrica para atender um requisito específico, posso garantir a você que alguém, em algum lugar, criticar o modo como ela é calculada. Existem várias razões para isso, algumas válidas, outras não tão válidas. Ninguém com bom senso afirmaria que qualquer um das métricas descritas acima é perfeita.

Eu alego que esse modo de calcular satisfaz os requisitos de uma forma pragmática, mas com toda a honestidade, não possso dizer que a medida de confiabilidade de campo me diga tudo o que eu quero saber sobre o atributo. Não pode, porque identifiquei muitas características que contribuem ou afetam a confiabilidade do sistema e, então, ignorei algumas! (e sem falar das características que não fora sequer identificadas). Pode haver boas razões para isso. Por exemplo, posso sentir que não tenho como avaliar a complexidade do produto no nível de sistema completo. O que devo fazer? Devo dedicar muito tempo tentando resolver o problema da complexidade do sistema antes de fornecer uma métrica ou devo ficar satisfeito com uma medida mais grosseira que me dê uma indicação razoável da confiabilidade do sistema?

Veja quem é o cliente da métrica!! Um gerente sênior se interessará por cada nuance, cada aspecto do atributo? Eu sugiro que não. Um gerente sênior exige uma identificação dos níveis de confiabilidade para que as tendências possam ser identificadas e, possivelmente, para que metas significativas possam ser definidas. Eles serão significativos? Bem, lembre-se de que você não fez essas definições isoladamente. Você conversou com engenheiros e gerentes de projetos enquanto deduzia as medidas, então algum grau de aceitação deve estar presente. Se você almeja a perfeição, não atingirá a meta por muitos anos. Satisfazer o requisito é o que você deve almejar e você deve fazer isso o mais rápido e simples possível. Alguns afirmam que isso é perfeição de qualquer maneira.

Agora, pode haver razões válidas para as pessoas atacarem as métricas. Pode ser que você tenha entendido errado ou, pelo menos, não cobriu todas as bases. No caso da confiabilidade de campo, estamos falando de falhas e não defeitos, mas quando um cliente apresenta uma falha, você pode não saber se é uma duplicata ou um defeito inválido ou ma indicação de uma falha verdadeira. De certa forma, este é um problema de implementação, mas deve ser considerado agora. Se você definir as falhas detectadas pelo usuário como a soma de todos os relatórios de defeitos não duplicados e validados levantados e fechados durante um determinado período de tempo junto com todos os relatórios levantados, mas ainda abertos, você terá alguns que não deveriam ter sido incluídos porque eles erão duplicados ou inválidos. Você pode achar que isso é mais aceitável do que simplesmente ignorar os defeitos em aberto, porque você pode ter alguns indivíduos inteligentes que percebem que nunca fechar os relatórios de feitos aumenta a confiabilidade. Isso não vai agradar ao cliente e nem a gerência. Portanto, se você escolher a primeira opção, experimente por alguns meses para ver quantos dos defeitos realmente acabam sendo "sem falha" ou relatórios duplicados. Eu sugiro que o número será insignificante, especialmente porque você poderá detectar as duplicatas à medidas que forem aumentadas.

Outras críticas podem ser mais fundamentadas e importantes. Escute! Se forem críticas válidas, mude o modelo e as métricas, mas tome cuidado com as críticas constantes que você nunca irá satisfazer.

## Conclusão

Portanto, para resumir as etapas da derivação da métrica como fiz em muitas ocasiões e relacionando-o ao paradigma QGM, Rombach, no qual minha abordagem está firmemente baseada, as etapas são as seguintes:

**OBJETIVOS (GOALS)**: Identificar o requisito inicial e os clientes associados.
<div style="padding-left: 5%;">
    Refine isso para um requisito específico com um conjunto de clientes identificados. Classifique o requisito dentro dos requisitos de alto nível do programa de métricas.
</div>



**PERGUNTAS (QUESTIONS)**: Identifique o atributo que o requisito aborda. Defina o atributo.
<div style="padding-left: 5%;">
    Descubra o que os outros estão fazendo. Identifique as características do produto ou processo que contribuem ou afetam o atributo de interesse. Derive um modelo combinando aspectos ou por meio da adoção de uma técnica.
</div>

**MÉTRICAS (METRICS)**: A partir do modelo, deduza uma técnica composta associando unidades de medidas ou escalas com aspectos desse modelo. 
<div style="padding-left: 5%;">
    A partir dessas escalas, identifique as métricas básicas que precisarão ser coletadas.
</div>

Então, tudo que você precisa fazer é implementar a métrica. Essa é parte difícil, mas falaremos sobre isso mais tarde!
















