# -*- coding: utf-8 -*-

import os
from carro import Carro
from pessoa import Pessoa
from prettytable import PrettyTable
from arquivo import *

def salvar():
    escrever_dados_carros(Carro.carros)
    escrever_dados_pessoas(Pessoa.pessoas)
    

class Cadastro():

    def __init__(self):
        carrega_objetos('carros', Carro)
        carrega_objetos('pessoas', Pessoa)

    def run(self):
        while True:
            self.render_menu()
            opcao = input()
        
            if opcao == 'q':
                salvar()
                break

            self.fluxo(opcao)
    
    def render_menu(self):
        os.system('clear')
        print('Selecione uma das opções:')
        print('1 - Cadastrar Carro')
        print('2 - Cadastrar Pessoa')
        print('3 - Listar Carros')
        print('4 - Listar Pessoas')
        print('5 - Deletar Carro')
        print('6 - Deletar Pessoa')
        print('7 - Listar carros de uma pessoa')
        print('8 - Descobrir dono de um carro')
        print('q - Finalizar o programa')
    
    def fluxo(self, opcao):
        os.system('clear')
        if opcao == '1':
            self.cadastrar_carro()

        elif opcao == '2':
            self.cadastrar_pessoa()
        
        elif opcao == '3':
            self.listar_carros()
            input('Aperte qualquer tecla para voltar ao menu\n')
        
        elif opcao == '4':
            self.listar_pessoas()
            input('Aperte qualquer tecla para voltar ao menu\n')

        elif opcao == '5':
            self.deletar_carro()
        
        elif opcao == '6':
            self.deletar_pessoa()
        
        elif opcao == '7':
            self.descobrir_carros()
        
        elif opcao == '8':
            self.descorbir_dono()
    
    def cadastrar_carro(self):
        os.system('clear')

        params = {
            'marca': None,  'modelo':  None,
            'placa': None,  'id_dono': None,
            'cor':   None,  'renavam': None
        }

        mensagens = {
            'marca': 'Digite a marca do carro: (Ford, VW, BMW, ' + \
                'JAC, ...)',
            
            'modelo': 'Digite o modelo do carro: (Ka, Gol, ' + \
                'Fusca, Mustang, ...',
            
            'placa': 'Digite a placa do carro: (ABC-1234)',

            'cor': 'Digite a cor do carro: (Branco, Preto, ' + \
                'Prata, ...)',

            'renavam': 'Digite o renavam do carro: (11 digitos)',

            'id_dono': 'Selecione o dono do carro pelo ID: ',
        }

        for k, v in params.items():
            
            print(mensagens[k])

            if(k == 'id_dono'):
                self.listar_pessoas()

            while True:
                if v == None:
                    v = input()
                
                else:
                    nome_funcao = 'valida_' + k
                    validador = getattr(Carro, nome_funcao)
                    resposta = validador(v)

                    if resposta == (True):
                        break

                    else:
                        print(resposta[1])
                        v = input()
            
            params[k] = v
        
        Carro(**params)
        
        print('Cadastro realizado com sucesso!')
        input('Aperte qualquer tecla para voltar ao menu!')
    

    def cadastrar_pessoa(self):
        params = {
            'nome': None,   'cpf':  None,
            'cidade': None, 'data_nascimento': None,
        }

        mensagens = {
            'nome': 'Digite o nome da pessoa: (João da Silva)',

            'cpf': 'Digite o CPF da pessoa: (123.123.123-12)',
            
            'cidade': 'Digite a cidade da pessoa: (Gama - DF)',

            'data_nascimento': 'Digite a data de nascimento da pessoa: (01/12/1990)',
        }

        for k, v in params.items():
            
            print(mensagens[k])

            while True:
                if v == None:
                    v = input()
                
                else:
                    nome_funcao = 'valida_' + k
                    validador = getattr(Pessoa, nome_funcao)
                    resposta = validador(v)

                    if resposta == (True):
                        break

                    else:
                        print(resposta[1])
                        v = input()
            
            params[k] = v
        
        Pessoa(**params)
        
        print('Cadastro realizado com sucesso!')
        input('Aperte qualquer tecla para voltar ao menu!')
        
    def listar_carros(self, carros=Carro.carros):
        tb = PrettyTable()
        tb.field_names = ['ID', 'Modelo', 'Marca', 'Placa', 
            'cor', 'Renavam', 'ID do Dono']
        
        for carro in carros:
            atributos = [carro.id, carro.modelo, carro.marca, 
                carro.placa, carro.cor, carro.renavam, 
                carro.id_dono]

            tb.add_row(atributos)
        
        print(tb)

        

    def listar_pessoas(self, pessoas=Pessoa.pessoas):
        tb = PrettyTable()
        tb.field_names = ['ID', 'Nome', 'CPF', 'Cidade', 
            'Data de Nascimento']

        for pessoa in pessoas:
            atributos = [pessoa.id, pessoa.nome, pessoa.cpf, 
                pessoa.cidade, pessoa.data_nascimento]

            tb.add_row(atributos)

        print(tb)


    def deletar_carro(self):
        self.listar_carros()

        id = input('Digite o ID do carro que deseja deletar: ')

        while True:
            carro = next((carro for carro in Carro.carros \
                if int(carro.id) == int(id)), None)

            if carro == None:
                print('ID inválido!')

                id = input('Digite o novo id ou q para sair\n')

                if id == 'q':
                    return
            
            else:
                msg = 'Você deseja apagar o carro: (y/N) \n'
                conf = input(msg+str(carro) +'\n')
                
                if conf == 'y':
                    Carro.carros.remove(carro)
                    print('Carro apagado com sucesso!')
                    input('Digite qualquer tecla para voltar ' + 
                        'ao menu!\n')
                    break
                
                else:
                    msg='Digite o ID do carro que deseja deletar: '
                    id = input(msg)

    def deletar_pessoa(self):
        self.listar_pessoas()

        id = input('Digite o ID da pessoa que deseja deletar: ')

        while True:
            pessoa = next((pessoa for pessoa in Pessoa.pessoas \
                if int(pessoa.id) == int(id)), None)

            if pessoa == None:
                print('ID inválido!')

                id = input('Digite o novo id ou q para sair\n')

                if id == 'q':
                    return
            
            else:
                msg = 'Você deseja apagar essa pessoa: (y/N) \n'
                conf = input(msg+str(pessoa) +'\n')
                
                if conf == 'y':
                    Pessoa.pessoas.remove(pessoa)
                    print('Pessoa apagado com sucesso!')
                    input('Digite qualquer tecla para voltar ' + 
                        'ao menu!\n')
                    break
                
                else:
                    msg='Digite o ID da pessoa que deseja deletar: '
                    id = input(msg)

    def descobrir_carros(self):
        self.listar_pessoas()

        id = input('Listar o carro da pessoa com ID: ')

        while True:

            if id == 'q':
                return

            pessoa = None

            for p in Pessoa.pessoas:
                if int(p.id) == int(id):
                    pessoa = p
                    break

            if pessoa == None:
                print('ID inválido!')

                id = input('Digite o novo id ou q para sair\n')
            
            else:

                print('\n' + str(pessoa))

                carros = list(
                    filter(
                        lambda carro: carro.id_dono == id,
                        Carro.carros
                    )
                )

                if not carros:
                    print('Essa pessoa não possui carros!')
                    
                    msg = 'Digite q para voltar ao menu ou ' + \
                          'outro ID\n'

                    id = input(msg)
                    continue

                self.listar_carros(carros)

                msg = 'Digite q para voltar ao menu ou outro ID\n'
                id = input(msg)

    def descorbir_dono(self):
        self.listar_carros()

        id = input('Listar dados do dono do carro com ID: ')

        carro = None

        while True:

            if id == 'q':
                return

            for c in Carro.carros:
                if int(c.id) == int(id):
                    carro = c
                    continue

            if carro == None:
                print('ID inválido!')

                id = input('Digite um novo id ou q para sair\n')
            
            else:

                print('\n' + str(carro))

                dono = None

                for pessoa in Pessoa.pessoas:
                    if int(pessoa.id) == int(carro.id_dono):
                        dono = pessoa
                    
                if dono:
                    self.listar_pessoas([dono])
                
                else:
                    print('Aparentemente esse carro não possui' + \
                        ' dono...')
                
                id = input('Digite um novo ID ou q para sair\n')

if __name__ == '__main__':
    Cadastro().run()