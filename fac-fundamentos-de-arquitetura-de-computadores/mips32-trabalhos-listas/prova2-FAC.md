#### Perguntas da segunda prova de FAC do semestre 01 de 2019

1.
	a) Explique o funcionamento de um processador Ciclo Único
	
	b) Explique o funcionamento de um processador MultiCiclo (Cite as 5 etapas de execução)
	
	c) Explique o funcionamento de um processador com pipeline

2. 	
	a) Explique a diferença entre barramento serial e paralelo

	b) Explique qual deles está mais suscetível à erros e o pq

3.	Implemente uma função que receba como parâmetro os números A, B e C e retorne em $s0 e $s1 a solução da equação linear abaixo:
	```
		A*x + B*y + C = 0
	```

4. 
	a) Explique a relação de preço, tamanho e velocidade das memórias

	b) Explique a utilidade da memória chache

5. Questão Extra:

	É apresentado um código mips e é pedido que você diga o que o programa está fazendo e o que será mostrado como resultado.

	A parte mais difícil do código era calcular o resultado da operação
	**nor $t0, $t0, $zero**. Essa operação inverte o sinal.

	O trecho de código era parecido com esse:

	```
		.data
			val1: 	.word 42
			val2:	.word 1 		# ultimo dígito da sua matrícula
		.text
		main:
			lw $t0, val1
			lw $t1, val2
			add $t1, $t1, 0x0001
			jal OpeNor
			add $t0, $t0, 0x0001
			add $t0, $t0, $t1
			move $a0, $t0
			li $v0, 1				# syscall 1: print integer
			syscall
			j return0
		OpeNor:
			nor $t0, $t0, $zero		# Inverte o sinal do número
			add $t0, $t0, 0x0001
			jr $ra
		return0:
			li $v0, 10
			syscall
	```