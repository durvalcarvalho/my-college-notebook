-- --------     << Empresa FUI >>     ------------
-- 
-- SCRIPT DE CRIACAO (DDL)
-- 
-- Data Criacao ...........: 06/10/2019
-- Autor(es) ..............: Durval Carvalho de Souza
-- Banco de Dados .........: MySQL
-- Banco de Dados(nome) ...: aula4exer7
-- 
-- PROJETO => 01 Base de Dados
--         => 10 Tabelas
-- -----------------------------------------------------------------

CREATE DATABASE IF NOT EXISTS aula4exer7;
use aula4exer7;

CREATE TABLE DEPARTAMENTO (
    idDepartamento 		INTEGER 	NOT NULL	AUTO_INCREMENT,
    nome 				VARCHAR(50) NOT NULL,

    CONSTRAINT DEPARTAMENTO_PK PRIMARY KEY (idDepartamento)

) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET utf8;

CREATE TABLE EMPREGADO (
    matricula 	INTEGER 		NOT NULL AUTO_INCREMENT,
    nome 		VARCHAR(50) 	NOT NULL,
    rua 		VARCHAR(50) 	NOT NULL,
    numero 		INTEGER 		NOT NULL,
    bairro 		VARCHAR(50) 	NOT NULL,
    salario 	DECIMAL(7, 2) 	NOT NULL,
    sexo 		ENUM('M', 'F')	NOT NULL,
    dtNasc 		DATE 			NOT NULL,

	CONSTRAINT EMPREGADO_PK PRIMARY KEY (matricula)

) Engine = InnoDB DEFAULT CHARSET utf8 AUTO_INCREMENT = 1;

CREATE TABLE gerencia (
	matricula		INTEGER		NOT NULL,
	idDepartamento	INTEGER		NOT NULL,
	dtInicio		DATE		NOT NULL,

	CONSTRAINT gerencia_FK1	FOREIGN KEY(matricula)
		REFERENCES EMPREGADO(matricula),

	CONSTRAINT gerencia_FK2 FOREIGN KEY (idDepartamento)
		REFERENCES DEPARTAMENTO(idDepartamento),

	CONSTRAINT gerencia_UK UNIQUE (matricula, idDepartamento)

) Engine = InnoDB DEFAULT CHARSET utf8;

CREATE TABLE associa (
	matricula		INTEGER		NOT NULL,
	idDepartamento	INTEGER		NOT NULL,

	CONSTRAINT associa_FK1	FOREIGN KEY(matricula)
		REFERENCES EMPREGADO(matricula),

	CONSTRAINT associa_FK2 FOREIGN KEY (idDepartamento)
		REFERENCES DEPARTAMENTO(idDepartamento),

	CONSTRAINT associa_UK UNIQUE (matricula, idDepartamento)
	
) Engine = InnoDB DEFAULT CHARSET utf8;

CREATE TABLE supervisiona (
	matriculaSupervisor		INTEGER		NOT NULL,
	matriculaSupervisionado	INTEGER		NOT NULL,

	CONSTRAINT supervisiona_FK1	FOREIGN KEY(matriculaSupervisor)
		REFERENCES EMPREGADO(matricula),

	CONSTRAINT supervisiona_FK2	FOREIGN KEY(matriculaSupervisionado)
		REFERENCES EMPREGADO(matricula)

) Engine = InnoDB DEFAULT CHARSET utf8;

CREATE TABLE DEPENDENTE (
    nome 		VARCHAR(50)		NOT NULL,
    sexo 		ENUM('M', 'F') 	NOT NULL,
    dtNasc 		DATE 			NOT NULL,
    parentesco 	VARCHAR(50) 	NOT NULL,
    matricula 	INTEGER 		NOT NULL,

    CONSTRAINT DEPENDENTE_UK UNIQUE (nome, matricula),

    CONSTRAINT DEPENDENTE_FK FOREIGN KEY (matricula)
		REFERENCES EMPREGADO(matricula)

) Engine = InnoDB, DEFAULT CHARSET utf8;

CREATE TABLE LOCALIZACAO (
    idLocalizacao 	INTEGER 		NOT NULL AUTO_INCREMENT,
    descricao 		VARCHAR(250) 	NOT NULL,

    CONSTRAINT LOCALIZACAO_PK PRIMARY KEY (idLocalizacao)

) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET utf8;

CREATE TABLE PROJETO (
    idProjeto 		INTEGER  	NOT NULL	AUTO_INCREMENT,
    nome 			VARCHAR(50) NOT NULL,
    idDepartamento 	INTEGER 	NOT NULL,

    CONSTRAINT PROJETO_PK PRIMARY KEY (idProjeto),

    CONSTRAINT PROJETO_FK FOREIGN KEY (idDepartamento)
		REFERENCES DEPARTAMENTO(idDepartamento)

) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET utf8;

CREATE TABLE esta1 (
    idDepartamento 	INTEGER 	NOT NULL,
    idLocalizacao 	INTEGER 	NOT NULL,

    CONSTRAINT tem_FK1 FOREIGN KEY (idDepartamento)
		REFERENCES DEPARTAMENTO(idDepartamento),

	CONSTRAINT tem_FK2 FOREIGN KEY (idLocalizacao)
		REFERENCES LOCALIZACAO(idLocalizacao)

) Engine = InnoDB DEFAULT CHARSET utf8;

CREATE TABLE trabalha (
    matricula 		INTEGER 	NOT NULL,
    idProjeto 		INTEGER 	NOT NULL,
    horasSemanais 	INTEGER 	NOT NULL,

    CONSTRAINT trabalha_FK1 FOREIGN KEY (matricula)
		REFERENCES EMPREGADO(matricula),

	CONSTRAINT trabalha_FK2 FOREIGN KEY (idProjeto)
		REFERENCES PROJETO(idProjeto)

) Engine = InnoDB DEFAULT CHARSET utf8;