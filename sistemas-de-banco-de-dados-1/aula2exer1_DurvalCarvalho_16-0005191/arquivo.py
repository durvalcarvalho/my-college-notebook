# -*- coding: utf-8 -*-

import csv

def carrega_objetos(path, classe):

    metadados = ler_metadados(path)
    dados = ler_dados(path)

    objetos = []

    for dado in dados:

        params = dict(zip(metadados, dado))
        objetos.append(classe(**params))
    
    return objetos    


def ler_metadados(path):

    filename = 'arquivos/metadados/metadados_' + path + '.csv'

    with open(filename) as csv_file:
        file = csv.reader(csv_file)

        metadados = next(file)
    
    metadados = [param.strip() for param in metadados]

    return metadados

def ler_dados(path):
    filename = 'arquivos/dados/dados_' + path + '.csv'

    dados = []

    with open(filename) as csv_file:
        file = csv.reader(csv_file)

        for line in file:
            line = [param.strip() for param in line]
            dados.append(line)
    
    return dados

def escrever_dados_carros(obj_list):
    filename = 'arquivos/dados/dados_carros.csv'
    
    obj_list.sort(key=lambda obj: int(obj.id))

    with open(filename, mode='w') as file:
        writer = csv.writer(file, delimiter=',')

        for obj in obj_list:
            l = [obj.marca, obj.modelo, obj.placa, obj.id, 
            obj.cor, obj.renavam, obj.id_dono]

            writer.writerow(l)

def escrever_dados_pessoas(obj_list):
    filename = 'arquivos/dados/dados_pessoas.csv'
    
    obj_list.sort(key=lambda obj: int(obj.id))

    with open(filename, mode='w') as file:
        writer = csv.writer(file, delimiter=',')

        for obj in obj_list:
            l = [obj.id, obj.cidade, obj.cpf, obj.nome, 
            obj.data_nascimento]

            writer.writerow(l)