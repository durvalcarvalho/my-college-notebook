# -*- coding: utf-8 -*-

import csv
from carro import Carro
from pessoa import Pessoa

def ler_arquivo(path, base_classe):
	"""
	Retorna uma lista de objectos da classe passada como parâmetro
	com os dados do arquivo especificado com o path

	Parâmetros
	----------
	path : str
		Caminho até o arquivo que será usado com fonte dos dados
	classe : type
		Classe que será usada para criar instâncias

	Retorna
	-------
	list
	    Retorna uma lista com instâncias da classe passada como 
	    parâmetro

	"""

	filename = 'files/' + path

	obj_list = []

	with open(filename) as csv_file:
		file = csv.reader(csv_file)

		# parametros do construtor
		line = next(file)

		for obj in file:

			params = dict(zip(line, obj))

			# remove espaços em brancos nas chaves e valores
			params = {
				k.strip() : v.strip() for k,v in params.items()
			}

			obj_list.append(base_classe(**params))

	return obj_list


def escreve_arquivo(path, obj_list):
	"""
	Cria um arquivo csv com o os atributos dos objectos contidos 
	na lista.

	Parâmetros
	----------
	path : str
		Caminho onde o arquivo que será criado
	obj_list : list
		Lista com objetos que serão escritos no arquivo
	"""

	if not obj_list:
		return

	filename = 'files/' + path

	with open(filename, mode='w') as file:
		writer = csv.writer(file, delimiter=',')

		# Parâmetros da classe
		params = obj_list[0].__dict__

		# Remover o underline dos atributos da classe
		params = { k[1:] : v for k,v in params.items() }

		data_description = list(params.keys())
		writer.writerow(data_description)

		for obj in obj_list:
			attr = obj.__dict__
			l = list(attr.values())
			writer.writerow(l)

if __name__ == '__main__':
	l = ler_arquivo('carros.csv', Carro)
	escreve_arquivo('carros.csv', l)

	l = ler_arquivo('pessoas.csv', Pessoa)
	escreve_arquivo('pessoas.csv', l)