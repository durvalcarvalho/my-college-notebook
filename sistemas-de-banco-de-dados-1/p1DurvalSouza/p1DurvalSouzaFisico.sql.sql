-- --------     << MATRICULA DE DISCIPLINAS >>     ------------
-- 
--                    SCRIPT DE CRIACAO (DDL)
-- 
-- Data Criacao ...........: 17/10/20189
-- Autor(es) ..............: Durval Carvalho de Souza
-- Banco de Dados .........: MySQL
-- Banco de Dados(nome) ...: durvalsouza
-- 
-- PROJETO => 01 Base de Dados
--         => 05 Tabelas
-- 
-- -----------------------------------------------------------------

CREATE DATABASE IF NOT EXISTS durvalsouza;
USE durvalsouza;

CREATE TABLE DISCIPLINA (
    nome VARCHAR(50) NOT NULL,
    siglaDisciplina VARCHAR(5) NOT NULL,
    qntCredito SMALLINT NOT NULL,
    periodo SMALLINT NOT NULL,

    CONSTRAINT DISCIPLINA_PK PRIMARY KEY(siglaDisciplina),
    CONSTRAINT DISCIPLINA_UK UNIQUE(nome)

) ENGINE=InnoDB;

CREATE TABLE PROFESSOR (
    primeiroNome VARCHAR(50) NOT NULL,
    ultimoNome VARCHAR(50) NOT NULL,
    dtNasc DATE NOT NULL,
    sexo ENUM('M', 'F') NOT NULL,
    idProfessor INT NOT NULL AUTO_INCREMENT,

    CONSTRAINT PROFESSOR_PK PRIMARY KEY(idProfessor)
) ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE email (
    idProfessor INT NOT NULL,
    email VARCHAR(50) NOT NULL,
    CONSTRAINT email_FK FOREIGN KEY(idProfessor) REFERENCES PROFESSOR(idProfessor),
    CONSTRAINT email_UK UNIQUE(idProfessor, email)
) ENGINE = InnoDB;

CREATE TABLE depende (
    siglaDisciplina VARCHAR(5) NOT NULL,
    siglaPreRequisito VARCHAR(5) NOT NULL,
    
    CONSTRAINT depende_FK_1 FOREIGN KEY(siglaDisciplina) REFERENCES DISCIPLINA(siglaDisciplina),
    CONSTRAINT depende_FK_2 FOREIGN KEY(siglaPreRequisito) REFERENCES DISCIPLINA(siglaDisciplina),
    CONSTRAINT depende_UK UNIQUE(siglaDisciplina, siglaPreRequisito)
) ENGINE = InnoDB;

CREATE TABLE pode (
    idProfessor INT NOT NULL,
    siglaDisciplina VARCHAR(5)  NOT NULL,

    CONSTRAINT pode_FK_1 FOREIGN KEY(idProfessor) REFERENCES PROFESSOR(idProfessor),
    CONSTRAINT pode_FK_2 FOREIGN KEY(siglaDisciplina) REFERENCES DISCIPLINA(siglaDisciplina),
    CONSTRAINT pode_UK UNIQUE(siglaDisciplina, idProfessor)
) ENGINE = InnoDB;