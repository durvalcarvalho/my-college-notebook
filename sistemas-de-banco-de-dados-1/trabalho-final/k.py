from random import randrange, choice

saw = set()

primnome = ['adriana', 'ana', 'maria', 'sandra', 'juliana', 'antonio', 'carlos', 'francisco', 'joao', 'jose']
lastNomes = ['gmail', 'outlook', 'msn', 'hotmail', 'yahoo']

while len(saw) < 31:

	email = choice(primnome) + '@' + choice(lastNomes) + '.com'

	rnd = randrange(1, 50)
	if rnd % 2 == 0:
		email += '.br'

	id = randrange(1, 31)

	st = f'({id}, \'{email}\'),'

	if st in saw:
		continue

	saw.add(st)
	print(st)

