# -*- coding: utf-8 -*-

from arquivos import *	# funcões para ler e escrer em arquivos
from tkinter import * 	# funções para criar interface
from pessoa import *	# classe Pessoa
from carro import *		# class Carro

from tkinter import ttk # classe para criar tabela


class GUI:

	def __init__(self):
		self.root = Tk()
		self.root.geometry("600x600") # Width x Height

		self.render_buttons()
	
		self.carros = ler_arquivo('carros.csv', Carro)
		self.pessoas = ler_arquivo('pessoas.csv', Pessoa)

		self.render_treeview(self.pessoas)
	

	def render_buttons(self):

		Button(text='Nova Pessoa', width=28, height=2, 
			command=self.render_add_person_window) \
				.grid(row=0, column=0, sticky=N+W)

		Button(text='Novo Carro', width=30, height=2, 
			command=self.render_add_car_window) \
				.grid(row=0, column=1, sticky=N+E)

		Button(text='Listar Pessoas', width=28, height=2, 
			command=self.listar_pessoas).grid(row=1, column=0,
				sticky=N+W)

		Button(text='Listar Carros', width=30, height=2, 
			command=self.listar_carros).grid(row=1, column=1,
				sticky=N+E)

		# Label para mostrar mensagens de erros
		self.message = Label(text='', fg='red')
		self.message.grid(row=2, column=0, columnspan=2, 
			sticky=W+E)

		Button(text='DELETE', command=self.delete_obj) \
			.grid(row=5, column=0, sticky=W+E)

		Button(text='EDIT', command=self.render_edit_obj_window) \
			.grid(row=5, column=1, sticky=W+E)

	def delete_obj(self):
		
		item = self.tree.item(self.tree.selection())['values']
		item = [str(i) for i in item]

		for obj in self.pessoas:
			attr_list = [str(i) for i in 
				list(obj.__dict__.values())]

			if attr_list == item:
				self.pessoas.remove(obj)
				self.update_treeview(self.pessoas)

				escreve_arquivo('pessoas.csv', self.pessoas)
				return obj

		for obj in self.carros:
			attr_list = [str(i) for i in 
				list(obj.__dict__.values())]

			if attr_list == item:
				self.carros.remove(obj)
				self.update_treeview(self.carros)

				escreve_arquivo('carros.csv', self.carros)
				return obj

	def render_edit_obj_window(self):
		obj = self.delete_obj()

		if isinstance(obj, Pessoa):
			self.render_edit_person_window(obj)

		else:
			self.render_edit_carro_window(obj)

	def render_edit_person_window(self, obj):

		self.new_person_root = Toplevel()

		Label(self.new_person_root, text='Nome: ') \
			.grid(row=0, column=0)

		sv = StringVar(self.new_person_root, value=obj.nome)
		nome = Entry(self.new_person_root, textvariable=sv)
		nome.grid(row=0, column=1)

		Label(self.new_person_root, text='Cidade: ') \
			.grid(row=1, column=0)

		sv = StringVar(self.new_person_root, value=obj.cidade)
		cidade = Entry(self.new_person_root, textvariable=sv)
		cidade.grid(row=1, column=1)

		Label(self.new_person_root, text='CPF: ') \
			.grid(row=2, column=0)

		sv = StringVar(self.new_person_root, value=obj.cpf)
		cpf = Entry(self.new_person_root, textvariable=sv)
		cpf.grid(row=2, column=1)

		Button(self.new_person_root, text='Criar', 
			command = lambda: self.create_person(
				nome.get(), cidade.get(), cpf.get())
			).grid(row=3)

	def render_edit_carro_window(self, obj):
		self.new_car_root = Toplevel()

		Label(self.new_car_root, text='Marca: ') \
			.grid(row=0,column=0)

		sv = StringVar(self.new_car_root, value=obj.marca)
		marca = Entry(self.new_car_root, textvariable=sv)
		marca.grid(row=0, column=1)


		Label(self.new_car_root, text='Modelo: ') \
			.grid(row=1,column=0)

		sv = StringVar(self.new_car_root, value=obj.modelo)
		modelo = Entry(self.new_car_root, textvariable=sv)
		modelo.grid(row=1, column=1)


		Label(self.new_car_root, text='Placa: ') \
			.grid(row=2,column=0)

		sv = StringVar(self.new_car_root, value=obj.placa)
		placa = Entry(self.new_car_root, textvariable=sv)
		placa.grid(row=2, column=1)


		Label(self.new_car_root, text='Dono do carro: ') \
			.grid(row=3,column=0)

		for d in self.pessoas:
			if d.id == obj.id_proprietario:
				dono = d;

		# sv = StringVar(self.new_person_root, value=dono.nome)
		people_names = [p.nome for p in self.pessoas]
		self.default = StringVar(self.new_car_root)
		self.default.set(dono.nome)

		optionMenu = OptionMenu(self.new_car_root, self.default, 
			*people_names)

		optionMenu.grid(row=3, column=1)

		Button(self.new_car_root, text='Criar', 
			command = lambda: self.create_car(
				marca.get(), modelo.get(), placa.get(), 
					self.default.get())).grid(row=4)

	def render_add_car_window(self):
		self.new_car_root = Toplevel()

		Label(self.new_car_root, text='Marca: ') \
			.grid(row=0,column=0)

		marca = Entry(self.new_car_root)
		marca.grid(row=0, column=1)


		Label(self.new_car_root, text='Modelo: ') \
			.grid(row=1,column=0)

		modelo = Entry(self.new_car_root)
		modelo.grid(row=1, column=1)


		Label(self.new_car_root, text='Placa: ') \
			.grid(row=2,column=0)

		placa = Entry(self.new_car_root)
		placa.grid(row=2, column=1)


		Label(self.new_car_root, text='Dono do carro: ') \
			.grid(row=3,column=0)

		people_names = [p.nome for p in self.pessoas]
		self.default = StringVar(self.new_car_root)
		self.default.set(people_names[-1])

		optionMenu = OptionMenu(self.new_car_root, self.default, 
			*people_names)

		optionMenu.grid(row=3, column=1)

		Button(self.new_car_root, text='Criar', 
			command = lambda: self.create_car(
				marca.get(), modelo.get(), placa.get(), 
					self.default.get())).grid(row=4)

	def render_add_person_window(self):
		self.new_person_root = Toplevel()
		# self.new_person_root.geometry("400x500") # Width x Height

		Label(self.new_person_root, text='Nome: ') \
			.grid(row=0, column=0)

		nome = Entry(self.new_person_root)
		nome.grid(row=0, column=1)

		Label(self.new_person_root, text='Cidade: ') \
			.grid(row=1, column=0)

		cidade = Entry(self.new_person_root)
		cidade.grid(row=1, column=1)

		Label(self.new_person_root, text='CPF: ') \
			.grid(row=2, column=0)

		cpf = Entry(self.new_person_root)
		cpf.grid(row=2, column=1)

		Button(self.new_person_root, text='Criar', 
			command = lambda: self.create_person(
				nome.get(), cidade.get(), cpf.get())
			).grid(row=3)

	def create_car(self, marca, modelo, placa, nome_dono):
		
		if nome_dono:
			dono = list(filter(lambda x: x.nome == nome_dono, \
				self.pessoas))[0]

			id_dono = dono.id

		if marca and modelo and placa:

			id = 0
			for c in self.carros:
				id = max(id, int(c.id) + 1)

			c = Carro(marca, modelo, placa, id, id_dono)
			self.carros.append(c)

			self.message['text'] = 'Carro criado com sucesso'
			self.message['fg'] = 'green'

			self.render_treeview(self.carros)
			self.new_car_root.destroy()

			escreve_arquivo('carros.csv', self.carros)

	def create_person(self, nome, cidade, cpf):
		if(nome and cidade and cpf):
			
			id = 0
			for p in self.pessoas:
				id = max(id, int(p.id) + 1)

			p = Pessoa(nome, cpf, cidade, id)
			self.pessoas.append(p)

			self.message['text'] = 'Pessoa criada com sucesso'
			self.message['fg'] = 'green'

			self.render_treeview(self.pessoas)
			self.new_person_root.destroy()

			escreve_arquivo('pessoas.csv', self.pessoas)

	def show(self):
		self.root.mainloop()

	def listar_pessoas(self):
		self.render_treeview(self.pessoas)

	def listar_carros(self):
		self.render_treeview(self.carros)

	def update_treeview(self, lista):

		for elem in self.tree.get_children():
			self.tree.delete(elem)

		for elem in lista:
			values = tuple(elem.__dict__.values())

			self.tree.insert('', 'end', 
				values=values)

	def render_treeview(self, lista):

		try:
			self.tree.destroy()
		except:
			self.tree = None

		# Criando modelo da tabela
		self.tree = ttk.Treeview(self.root)
		self.tree['show'] = 'headings'

		params = lista[0].__dict__

		headers  = list(params.keys())
		headers = [ i[1:] for i in headers]

		self.tree['columns'] = headers

		for i in range(len(headers)):
			self.tree.column('#' + str(i), width=100, 
				stretch=True)

			self.tree.heading(i, text=headers[i])

		self.tree.grid(row=4, column=0, columnspan=2)
		self.update_treeview(lista)

if __name__ == '__main__':
	GUI().show()