# -*- coding: utf-8 -*-

class Pessoa:

	def __init__(self, nome, cpf, cidade, id):
		self._id = id
		self._cidade = cidade
		self._cpf = cpf
		self._nome = nome

	@property
	def cidade(self):
		return self._cidade

	@property
	def cpf(self):
		return self._cpf

	@property
	def nome(self):
		return self._nome

	@property
	def id(self):
		return self._id

	@cidade.setter
	def cidade(self, cidade_):
		self._cidade = str(cidade_)

	@cpf.setter
	def cpf(self, cpf_):
		self._cpf = str(cpf_)

	@nome.setter
	def nome(self, nome_):
		self._nome = str(nome_)