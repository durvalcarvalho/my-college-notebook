-- --------     << Empresa FUI >>     ------------
-- 
-- SCRIPT DE POPULA (DML)
-- 
-- Data Criacao ...........: 06/10/2019
-- Autor(es) ..............: Durval Carvalho de Souza
-- Banco de Dados .........: MySQL
-- Banco de Dados(nome) ...: aula4exer7
-- 
-- PROJETO => 01 Base de Dados
--         => 07 Tabelas
-- -----------------------------------------------------------------

use aula4exer7;

INSERT INTO DEPARTAMENTO VALUES 
	(NULL, 'Tecnologia da Informação'),
	(NULL, 'Administrativo'),
	(NULL, 'Produção');

INSERT INTO EMPREGADO VALUES 
	(NULL, 'João Felix', 'Champs Elysees', '10', 'Leblon', '5000.50', 'M', '1990-01-01'),
	(NULL, 'Fernando Severino', 'Las Vegas Strip', '105', 'São Conrado', '2000.50', 'M', '1991-01-01'),
	(NULL, 'Gustavo Daniel', 'Las Angeles Roads', '705', 'Ephoc', '20000.50', 'M', '1961-01-01'),
	(NULL, 'Maria Ferdinans', 'Khao San', '7', 'Higienópolis', '25000.50', 'F', '1997-01-01');

INSERT INTO gerencia VALUES
	(1, 1, '2016-01-01'),
	(2, 2, '2019-01-01'),
	(3, 3, '2018-01-01');

INSERT INTO associa VALUES
	(1, 1),
	(2, 2),
	(3, 3);

INSERT INTO supervisiona VALUES
	(1, 2),
	(1, 3),
	(1, 4);

INSERT INTO DEPENDENTE VALUES 
	('Gabriel Felix', 'M', '1995-01-01', 'Primo', 1),
	('Erick Severino', 'M', '1985-01-01', 'Pai', 2),
	('Fernanda Daniel', 'F', '200-01-01', 'Filha', 3);

INSERT INTO LOCALIZACAO VALUES 
	(NULL, 'Segundo Andar do Prédio Empire Build'),
	(NULL, 'Primeiro Andar do Prédio Arab States'),
	(NULL, 'Sétimo Andar do Prédio California Vegas');

INSERT INTO PROJETO VALUES 
	(NULL, 'Grand Ethiopian', 1),
	(NULL, 'LAPSSET Corridor Program', 2),
	(NULL, 'New Suez Canal', 3);

INSERT INTO esta1 VALUES 
	(1, 1),
	(1, 2),
	(1, 3);

INSERT INTO trabalha VALUES 
	(1, 1, 40),
	(2, 2, 15),
	(3, 3, 20);