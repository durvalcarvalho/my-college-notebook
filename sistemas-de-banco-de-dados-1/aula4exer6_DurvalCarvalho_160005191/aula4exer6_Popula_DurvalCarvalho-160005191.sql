-- --------     << DETRAN >>     ------------
-- 
-- SCRIPT DE POPULAR (DML)
-- 
-- Data Criacao ...........: 30/09/2019
-- Autor(es) ..............: Durval Carvalho de Souza
-- Banco de Dados .........: MySQL
-- Banco de Dados(nome) ...: bdDetran
-- 
-- Data Ultima Alteracao ..: 30/09/2019
--   => Criação das tabelas
-- 
-- PROJETO => 01 Base de Dados
--         => 08 Tabelas
-- -----------------------------------------------------------------

USE bdDetran;

DROP TABLE INFRACAO;
DROP TABLE LOCAL;
DROP TABLE AGENTE;
DROP TABLE CATEGORIA_INFRACAO;
DROP TABLE VEICULO;
DROP TABLE CATEGORIA_VEICULO;
DROP TABLE MODELO;
DROP TABLE PROPRIETARIO;

INSERT INTO PROPRIETARIO VALUES (
	'91177612046',
	'Naruto Uzumaki',
	'Masculino',
	'1999-11-30',
	'Adalgisa',
	'Aldeia de Folha',
	'Konohagakure',
	'Casa 4A'
);

INSERT INTO PROPRIETARIO VALUES (
	'43948508003',
	'Sakura Haruno',
	'Feminino',
	'1999-09-30',
	'Ayrosa',
	'Osasco',
	'São Paulo',
	'Apartamento Raffa Moreira Bloco 3 Apt 2'
);

INSERT INTO PROPRIETARIO VALUES (
	'52419338081',
	'Sasuke Uchiha',
	'Masculino',
	'1999-10-30',
	'Bonança',
	'Pindamonhangaba',
	'São Paulo',
	'Ao lado do Horto Florestal'
);

INSERT INTO MODELO VALUES (
	1,
	'FIAT  PUNTO'
);

INSERT INTO MODELO VALUES (
	2,
	'Honda PCX'
);

INSERT INTO MODELO VALUES (
	3,
	'Scania R440'
);

INSERT INTO CATEGORIA_VEICULO VALUES (
	1,
	'AUTOMÓVEL'
);

INSERT INTO CATEGORIA_VEICULO VALUES (
	2,
	'MOTOCICLETA'
);

INSERT INTO CATEGORIA_VEICULO VALUES (
	3,
	'CAMINHÃO'
);

INSERT INTO VEICULO VALUES (
	'MNF2224',
	'2T2BK1BA3CC',
	'2019-01-01',
	1,
	1,
	91177612046
);

INSERT INTO VEICULO VALUES (
	'IAP6484',
	'HTVBK7BA3HC',
	'2017-01-01',
	2,
	2,
	43948508003
	
);

INSERT INTO VEICULO VALUES (
	'JUK9504',
	'2G2BK14A3HC',
	'2014-01-01',
	3,
	3,
	52419338081
);

INSERT INTO CATEGORIA_INFRACAO VALUES (
	1,
	1467.35,
	'Dirigir veículo com CNH cassada'
);

INSERT INTO CATEGORIA_INFRACAO VALUES (
	2,
	2934.70,
	'Dirigir sob influência de álcool'
);

INSERT INTO CATEGORIA_INFRACAO VALUES (
	3,
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
	1,
	40.71727401,
	-74.00898606,
	80
);

INSERT INTO LOCAL VALUES (
	2,
	-33.18726403,
	-84.80898606,
	80
);

INSERT INTO LOCAL VALUES (
	3,
	-83.97747004,
	43.06848906,
	60
);

INSERT INTO INFRACAO VALUES (
	89,
	'MNF2224',
	1,
	3,
	123456789,
	'2019-09-28'
);

INSERT INTO INFRACAO VALUES (
	89,
	'IAP6484',
	2,
	1,
	987654321,
	'2019-09-29'
);

INSERT INTO INFRACAO VALUES (
	89,
	'JUK9504',
	3,
	2,
	145236897,
	'2019-09-30'
);