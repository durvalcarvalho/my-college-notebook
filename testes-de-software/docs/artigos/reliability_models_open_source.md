# Reliability models and open source software: an empirical study

## 1. Resumo

O uso de Softwares Open Source vem aumentando significativamente com o passsar dos anos, não só empresas estão utilizando, mas também governos, isso devido a sua disponibilidade com custos menores e a segurança que esses softwares costumam ter.

Porém por serem softwares open source, onde na maioria das vezes você pode só "pegar e usar", esses softwares não se comprometem com a confiabilidade de seus produtos, e nem com o dado que uma falha no uso do software possa causar.

Por conta desses fatores, esse trabalho se propõe a apresentar alguns fatos sobre software open source e diferentes conceitos de confiabilidade, com base em um levantamento bibliográfico.

## 2. Introdução

Software open source, na maioria dos casos, permite a seus usuários o uso sem custos, e a modificação do código base. Os exemplos mais bem sucedidos são o sistema operacional GNU Linux, Apache Web server, PHP, Python, Mozilla Firefox, MySQL e etc.

[...]

## 2.1 Confiabilidade de Software Open Source

A conceito de confiabilidade para softwares Open Source é exatamente o mesmo dos demais tipos de software, assim, confiabilidade continua sendo um fator chave para o sucesso de um software, seja ele open source ou não.

Confiabilidade é definido como a probabilidade de não apresentar falhas durante um período específico de tempo em um dado ambiente.

[...]

### 2.1.1 Mecanismos de Falha de Software

Falhas de software podem ser erros, ambiguidades, descuidos ou má interpretação da especificação que o software deve satisfazer. Descuidos ou incompetência do desenvolvedor, uso de testes inadequados, testes incorretos ou uso do software de maneira inadequada ou inesperada, ou outros problemas imprevistos pela equipe de desenvolvimento.

Embora seja tentador fazer uma analogia entre confiabilidade de software e confiabilidade de hardware, esses dois apresentam diferenças básicas que diferenciam os mecanismos de falhas. A falha em hardware são majoritariamente falhas físicas, enquanto falhas de softwares são majoritariamente falhas lógicas, que são mais difíceis de identificar, classificar e corrigir.

Software diferentemente de hardware, podem ser duplicados em introduzir defeitos. Além disso, software não se desgasta com o tempo de uso. Desse modo, utilizar os conceitos e modelos de confiabilidade dos demais tipos de produtos no contexto de software, na maioria das vezes irá produzir dados que não condizem com a realidade.

### 2.1.2. Funções de Falha

As ocorrência de falhas pode ser modelada em relação ao tempo, com o uso de funções probabilísticas que representam a relação entre essas duas variáveis aleatórias. As funções de falha acumulativa, função de intensidade de falha, função de taxa de falha e o tempo médio para função de falha, são alguns exemplos dessa modelagem.

As funções de falha acumulativa, também chamadas de função de valor médio, denotam as falhas cumulativas médias associadas a cada ponto do tempo.

Já a função de intensidade de falha representa a taxa de mudança da função defalha.

A função de taxa de falha, também chamada de taxa de ocorrência de falha, é definida como a probabilidade de que uma falha ocorra em um período de tempo [t, t+Δt] sabendo que nenhuma falha ocorreu no período antes de t.

A função de tempo médio até a falha (MTTF), também conhecida como tempo médio entre falhas (MTBF) representa o tempo esperado em que a próxima falha será observada.

Outra função relacionada ao tempo é o tempo médio de reparo (MTTR), que representa o tempo esperado até que um sistema seja reparado após a observação de uma falha.

Disponibilidade é a probabilidade que um sistema esteja disponível quando necessário. A disponibilidade é calculada com base nas funções de falha.

Disponibilidade = (MTTF) / (MTTF + MTTR)

Perfil Operacional de um sistema é definido como o conjunto de operações que o software pode executar junto com a probabilidade com que ocorrem. 

Uma operação é um conjunto de tarefas que envolvem processamentos semelhates.

Dois tipos de dados de falha, nomeados como dados de contagem de falhas e dados de tempo entre falhas, podem ser coletados para fins de medição da confiabilidade de um software.

## 2.2 Modelos de Confiabilidade

Com o papel cada vez maior que os softwares desempenham em nossos sistemas, inclusive em sistemas críticos (softwares de aviões, UTIs, etc.), a preocupação tem crescido constantemente com a qualidade dos softwares. Uma das facetas mais importantes da qualidade de um software é sua confiabilidade. 

Essa preocupação incentivou diversos pesquisadores a proporem maneiras de se medir a confiabilidade de um sistema, essas maneiras são Modelos de Confiabilidade. Goel e Bastani definiem duas categorias para esses modelos:

- Modelos de crescimento de confiabilidade de software.
- Modelos Estatísticos.

Os modelos de crescimento de confiabilidade estimam a confiabilidade usando o histórico de erros do programa, enquanto os outros usam a resposta (sucesso/falha) de um programa quando confrontado em uma suite de testes sem fazer correção nos erros descobertos.

Cada modelo possui suas próprias suposições, e são usados em fases específicas do desenvolvimento.

## 2.2.1. Modelo 1: Tempo de falha exponencial

Nesse modelo se pressume que o tempo decorrido entre as falhas obedece uma distribuição exponencial com um parâmetro que é propocional ao número de falhas restantes no software, ou seja, o tempo médio entre as falhas no tempo t é `1 /(Φ * (N - (i-1)))` . Nesse modelo, `t` é qualquer ponto no tempo entre a falha (i-1) e i. 
`Φ` é a constante de proporcionalidade e `N` é o total de falhas ocorridas no período no qual o software está sendo analisado.

A figura abaixo mostra o impacto de encontrar e corrigir uma falha na taxa de risco. Pode-se ver que cada falha que é descoberta modifica a constante de proporcionalidade, que consequentemente reduz a taxa de risco do software.

<div align="center">
  <img src="artigos/static/kumar-dwivedi-tiwari/img-1.png" >
</div>

Esse modelo considera que a correção de uma falha irá impactar sempre da mesma forma a confiabilidade do software.

## 2.2.2. Modelo 2: Modelo de Processo não Homogênico de Poisson

Esse modelo assume que assume que o número de falhas por unidade de tempo é uma variável aleatória independente de Poisson, isso, 

> **Distribuição de Poisson** (fala-se "Poassôm"):
> É uma distribuição de probabilidade discreta de uma variável aleatória X que satisfaz às seguites condições:
> 1. O experimento consiste em calcular o número de vezes (k), que um evento ocorre em um dado intervalo.
> 2. A probabilidade de o evento acontecer é a mesma para cada intervalo.
> 3. O número de ocorrência em um intervalo é independente do número de ocorrência em outro intervalo.
> 
> A distribuição de Poisson possui um parâmetro λ (lambda) que chamammos de taxa de ocorrência, que corresponde à frequência média ou esperada de ocorrências em um determinado intervalo. Além disso, sempre temos que λ > 0). 
> 
> A probabilidade é calculada da seguinte forma:
> 
> P(X=k) = (e^-λ * λ^k) / (k!)

[...]

# 3. Conclusão

