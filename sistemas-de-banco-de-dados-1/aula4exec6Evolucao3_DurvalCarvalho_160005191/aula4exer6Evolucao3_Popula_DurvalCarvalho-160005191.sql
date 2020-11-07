-- --------     Aula4Exer6 - Evolucao 3 ------------
-- 
-- SCRIPT DE CRIACAO (DML)
-- 
-- Data Criacao ...........: 08/10/2019
-- Autor(es) ..............: Durval Carvalho de Souza
-- Banco de Dados .........: MySQL
-- Banco de Dados(nome) ...: aula4exer6Evolucao3
-- 
-- PROJETO  => 01 Base de Dados
--          => 09 Tabelas
-- 
-- -----------------------------------------------------------------

USE aula4exer6Evolucao3;

INSERT INTO PROPRIETARIO VALUES (
	'91177612046',
	'Naruto Uzumaki',
	'M',
	'1999-11-30',
	'Adalgisa',
	'Aldeia de Folha',
	'Konohagakure'
);

INSERT INTO TELEFONES VALUES(
	'91177612046',
	'+55 6458362499'
);

INSERT INTO PROPRIETARIO VALUES (
	'43948508003',
	'Sakura Haruno',
	'F',
	'1999-09-30',
	'Ayrosa',
	'Osasco',
	'São Paulo'
);

INSERT INTO TELEFONES VALUES(
	'43948508003',
	'+55 6163547426'
);

INSERT INTO PROPRIETARIO VALUES (
	'52419338081',
	'Sasuke Uchiha',
	'M',
	'1999-10-30',
	'Bonança',
	'Pindamonhangaba',
	'São Paulo'
);

INSERT INTO TELEFONES VALUES(
	'43948508003',
	'+55 33588569'
);

INSERT INTO MODELO_VEICULO VALUES (
	NULL,
	'FIAT  PUNTO'
);

INSERT INTO MODELO_VEICULO VALUES (
	NULL,
	'Honda PCX'
);

INSERT INTO MODELO_VEICULO VALUES (
	NULL,
	'Scania R440'
);

INSERT INTO CATEGORIA_VEICULO VALUES (
	NULL,
	'AUTOMÓVEL'
);

INSERT INTO CATEGORIA_VEICULO VALUES (
	NULL,
	'MOTOCICLETA'
);

INSERT INTO CATEGORIA_VEICULO VALUES (
	NULL,
	'CAMINHÃO'
);

INSERT INTO VEICULO VALUES (
	'Preto',
	'2019-01-01',
	'2T2BK1BA3CC',
	'MNF2224',
	'91177612046',
	1,
	1
);

INSERT INTO VEICULO VALUES (
	'Azul',
	'2017-01-01',
	'HTVBK7BA3HC',
	'IAP6484',
	'43948508003',
	2,
	2
);

INSERT INTO VEICULO VALUES (
	'Roxo',
	'2014-01-01',
	'2G2BK14A3HC',
	'JUK9504',
	'52419338081',
	3,
	3
);

INSERT INTO CATEGORIA_INFRACAO VALUES (
	NULL,
	1467.35,
	'Dirigir veículo com CNH cassada'
);

INSERT INTO CATEGORIA_INFRACAO VALUES (
	NULL,
	2934.70,
	'Dirigir sob influência de álcool'
);

INSERT INTO CATEGORIA_INFRACAO VALUES (
	NULL,
	2934.70,
	'Disputar corrida'
);

INSERT INTO AGENTE VALUES (
	123456789,
	'James Bond',
	'2015-06-30'
);

INSERT INTO AGENTE VALUES (
	987654321,
	'Chefe Wiggum',
	'2002-06-30'
);

INSERT INTO AGENTE VALUES (
	145236897,
	'Captain Ray Holt',
	'1987-06-30'
);

INSERT INTO LOCAL VALUES (
	NULL,
	40.71727401,
	-74.00898606,
	80
);

INSERT INTO LOCAL VALUES (
	NULL,
	-33.18726403,
	-84.80898606,
	80
);

INSERT INTO LOCAL VALUES (
	NULL,
	-83.97747004,
	43.06848906,
	60
);

INSERT INTO INFRACAO VALUES (
	89,
	'MNF2224',
	1,
	3,
	'123456789',
	'2019-09-28'
);

INSERT INTO INFRACAO VALUES (
	89,
	'IAP6484',
	2,
	1,
	'987654321',
	'2019-09-29'
);

INSERT INTO INFRACAO VALUES (
	89,
	'JUK9504',
	3,
	2,
	'145236897',
	'2019-09-30'
);