# -*- coding: utf-8 -*-

class Pessoa:

    pessoas = []

    def __init__(self, nome, cpf, cidade, data_nascimento, id=None):

        Pessoa.valida_nome(nome)
        Pessoa.valida_cpf(cpf)
        Pessoa.valida_cidade(cidade)
        Pessoa.valida_data_nascimento(data_nascimento)

        if not id:
            id = self.gerar_id()

        self.id = id
        self.cpf = cpf
        self.nome = nome
        self.cidade = cidade
        self.data_nascimento = data_nascimento

        Pessoa.pessoas.append(self)
    
    def __repr__(self):
        return f'{self.id} - {self.nome} - {self.cpf} -' + \
            f'{self.cidade} - {self.data_nascimento}'
    
    def valida_nome(nome):
        if len(nome) <= 100:
            return (True)

        return(False, 'O nome deve ter menos de 100 caracteres')
    
    def valida_cpf(cpf):
        cpf = cpf.replace('.', '')
        cpf = cpf.replace(',', '')
        cpf = cpf.replace('-', '')

        if not len(cpf) == 11:
            return (False, 'O CPF deve conter 11 dígitos')

        if not cpf.isdigit():
            return (False, 'O CPF deve conter somente números')

        return (True)
    
    def valida_cidade(cidade):
        if len(cidade) < 100:
            return (True)

        return (False, 'A cidade deve ter menos de 100 caracteres')

    def valida_data_nascimento(data_nascimento):
        data_nascimento = data_nascimento.replace('/', '')
        if not data_nascimento.isdigit():
            return (False, 'A data de nascimento deve conter somente números')

        if not len(data_nascimento) == 8:
            return (False,  'Data de nacimento inválida')

        return (True)
    
    def gerar_id(self):
        id = 0
        for pessoa in Pessoa.pessoas:
            id = max(id, int(pessoa.id))
        return id + 1