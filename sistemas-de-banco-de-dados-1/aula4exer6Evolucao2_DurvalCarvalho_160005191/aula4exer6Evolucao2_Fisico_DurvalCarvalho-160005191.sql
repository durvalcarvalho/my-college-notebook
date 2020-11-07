-- --------     << DETRAN >>     ------------
-- 
-- SCRIPT DE CRIACAO (DDL)
-- 
-- Data Criacao ...........: 07/10/2019
-- Autor(es) ..............: Durval Carvalho de Souza
-- Banco de Dados .........: MySQL
-- Banco de Dados(nome) ...: aula4exer6Evolucao2
-- 
-- PROJETO => 01 Base de Dados
--         => 08 Tabelas
-- -----------------------------------------------------------------

CREATE DATABASE bdDetran;
USE bdDetran;

CREATE TABLE PROPRIETARIO (
    CPF         VARCHAR(11)     NOT NULL PRIMARY KEY,
    nome        VARCHAR(50)     NOT NULL,
    sexo        ENUM('M', 'F')  NOT NULL,
    dtNasc      DATE            NOT NULL,
    cidade      VARCHAR(50)     NOT NULL,
    bairro      VARCHAR(50)     NOT NULL,
    estado      VARCHAR(50)     NOT NULL,
    complemento VARCHAR(100)    NOT NULL
);

CREATE TABLE MODELO(
    codigoModelo    INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
    descModelo      VARCHAR(50) NOT NULL

)   ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE CATEGORIA_VEICULO (
    codigoCategoria INT            NOT NULL AUTO_INCREMENT PRIMARY KEY,
    descCategoria   VARCHAR(50)    NOT NULL

)   ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE VEICULO (
    corPredominante     VARCHAR(15) NOT NULL,
    anoFab              DATE        NOT NULL,
    chassi              VARCHAR(11) NOT NULL UNIQUE,
    placa               VARCHAR(7)  NOT NULL PRIMARY KEY,
    CPF                 VARCHAR(11) NOT NULL,
    codigoCategoria     INT         NOT NULL,
    codigoModelo        INT         NOT NULL,

    CONSTRAINT VEICULO_PROPRIETARIO_FK FOREIGN KEY (CPF) REFERENCES PROPRIETARIO (CPF),
    CONSTRAINT VEICULO_MODELO_FK FOREIGN KEY(codigoModelo) REFERENCES MODELO (codigoModelo),
    CONSTRAINT VEICULO_CATEGORIA_VEICULO_FK FOREIGN KEY (codigoCategoria) REFERENCES CATEGORIA_VEICULO (codigoCategoria)
);

CREATE TABLE CATEGORIA_INFRACAO (
    codigoInfracao  INT            NOT NULL PRIMARY KEY,
    valorMulta      DECIMAL(6, 2)  NOT NULL,
    descricao       VARCHAR(50)    NOT NULL

)   ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE AGENTE (
    matriculaAgente INT             NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome            VARCHAR(50)     NOT NULL,
    dtContratacao   DATE            NOT NULL

)   ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE LOCAL(
    codigoLocal         INT             NOT NULL AUTO_INCREMENT PRIMARY KEY,
    latitude            DECIMAL(10, 8)  NOT NULL,
    longitude           DECIMAL(10, 8)  NOT NULL,
    limiteVelocidade    INT             NOT NULL

)   ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE INFRACAO(
    velocidade          INT         NOT NULL,
    placa               VARCHAR(7)  NOT NULL,
    codigoLocal         INT         NOT NULL,
    codigoInfracao      INT         NOT NULL,
    matriculaAgente     INT         NOT NULL,
    dtHorario           DATE        NOT NULL,

    CONSTRAINT INFRACAO_VEICULO_FK FOREIGN KEY (placa) REFERENCES VEICULO(placa),
    CONSTRAINT INFRACAO_LOCAL_FK FOREIGN KEY (codigoLocal) REFERENCES LOCAL(codigoLocal),
    CONSTRAINT INFRACAO_CATEGORIA_INFRACAO_FK FOREIGN KEY (codigoInfracao) REFERENCES CATEGORIA_INFRACAO(codigoInfracao),
    CONSTRAINT INFRACAO_AGENTE_FK FOREIGN KEY(matriculaAgente) REFERENCES AGENTE(matriculaAgente)
);