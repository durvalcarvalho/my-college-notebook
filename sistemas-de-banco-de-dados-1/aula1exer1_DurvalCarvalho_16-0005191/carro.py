# -*- coding: utf-8 -*-


class Carro:

	def __init__(self, marca, modelo, placa, id, id_proprietario):
		self._marca = marca
		self._modelo = modelo
		self._placa = placa
		self._id = id
		self._id_proprietario = id_proprietario


	@property
	def marca(self):
		return self._marca

	@property
	def modelo(self):
		return self._modelo

	@property
	def placa(self):
		return self._placa

	@property
	def id(self):
		return self._id

	@property
	def id_proprietario(self):
		return self._id_proprietario

	@marca.setter
	def marca(self, marca_):
		self._marca = str(marca_)

	@modelo.setter
	def modelo(self, modelo_):
		self._modelo = str(modelo_)

	@placa.setter
	def placa(self, placa_):
		self._placa = str(placa_)

	@id_proprietario.setter
	def id_proprietario(self, id_prop):
		self._id_proprietario = str(id_prop)