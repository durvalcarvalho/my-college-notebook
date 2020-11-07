#### Perguntas da prova substitutiva de FAC do semestre 01 de 2019

1.

	Quais desses dispositivos pode ser considerado totalmente eletrônicos? Relés, válvulas ou transistor? Justifique.

2.
	Implemente um procedimento em mips que converta um valor de fahrenheit para celsius. Utilize como o registrador $f15 como entrada e o registrador $t16 como saída.

3.
	a) Explique o que é memória virtual e explique suas aplicações.

	b) Explique a diferença de memória virutal e memória cache. Explique citando preço, capacidade e velocidade.

4. 
	Análise de código. Qual o output? (Código semelhante)

		```
		.data
			val1: 	.word 16
			val2:	.word 91 		# 2 ultimos dígitos da sua matrícula
		.text
		main:
			lw $t0, val1
			lw $t1, val2

			add $t3, $t0, $t1

			ori $t2, $t3, 0x0001

			jal funct

			add $a0, $zero, $t2
			li $v0, 1				# syscall 1: print integer
			syscall

			li $v0, 10
			syscall
		
		funct:
			add $t4, $zero, $zero
			add $t5, $zero, $zero
			addi $t6, $zero, 3

		func_loop:
			div $t3, $t6
			mfhi $t7

			beq $t7, $zero, exit

			addi $t6, %t6, 2

			slt $t8, $t0, $t6
			beq $t8,, $zero, func_loop

		exit:
			li $t2, 2
			jr $ra
	```