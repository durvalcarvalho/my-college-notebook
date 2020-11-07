# -*- coding: utf-8 -*-

class Carro:

    carros = []

    def __init__(self, marca, modelo, placa, id_dono, 
        cor, renavam, id=None):

        if not id:
            id = Carro.gerar_id()

        self.id = id
        self.cor = cor
        self.placa = placa
        self.marca = marca
        self.modelo = modelo
        self.id_dono = id_dono
        self.renavam = renavam

        Carro.carros.append(self)
    
    def __repr__(self):
        return f'{self.id} - {self.modelo} - {self.marca} -' + \
            f'{self.placa}'
    
    def gerar_id():
        id = 0
        for carro in Carro.carros:
            id = max(id, int(carro.id))
        return id + 1
    
    def valida_marca(marca):

        if len(marca) <= 100:
            return (True)
        else:
            return (False, 'A marca deve ter menos de 100 caracteres')
        
    def valida_modelo(modelo):
        if len(modelo) <= 100:
            return (True)
        else:
            return(False, 'O modelo deve ter menos de 100 caracteres')

    def valida_placa(placa):
        placa = placa.replace('-', '')
        letras = placa[:3]
        numeros = placa[3:]

        if not letras.isalpha():
            return (False, 'Placa inválida')
        if not len(letras) == 3:
            return (False, 'Placa inválida')
        if not numeros.isdigit():
            return (False, 'Placa inválida')
        if not len(numeros) == 4:
            return (False, 'Placa inválida')
        return (True)

    def valida_id_dono(id_dono):
        if id_dono.isdigit():
            return (True)
        else:
            return (False, 'Id inválido')

    def valida_cor(cor):
        if not cor.isalpha():
            return (False, 'Cor inválida')
        if not len(cor) <= 100:
            return (False, 'Cor inválida')
        return (True)

    def valida_renavam(renavam):
        if not len(renavam) == 11:
            return (False, 'Renavam inválido')
        if not renavam.isdigit():
            return (False, 'Renavam inválido')
        return (True)