-- --------     << DETRAN >>     ------------
-- 
-- SCRIPT DE CRIACAO (DDL)
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

CREATE DATABASE bdDetran;
USE bdDetran;

CREATE TABLE PROPRIETARIO (
    CPF         VARCHAR(11)     NOT NULL PRIMARY KEY,
    nome        VARCHAR(50)     NOT NULL,
    sexo        VARCHAR(9)      NOT NULL,
    dtNasc      DATE            NOT NULL,
    bairro      VARCHAR(50)     NOT NULL,
    cidade      VARCHAR(50)     NOT NULL,
    estado      VARCHAR(50)     NOT NULL,
    complemento VARCHAR(100)    NOT NULL
);

CREATE TABLE MODELO(
    codigoModelo    INT         NOT NULL PRIMARY KEY, 
    descricao       VARCHAR(50) NOT NULL
);

CREATE TABLE CATEGORIA_VEICULO (
    codigoCategoria INT            NOT NULL PRIMARY KEY,
    descricao       VARCHAR(50)    NOT NULL
);

CREATE TABLE VEICULO (
    placa               VARCHAR(7)  NOT NULL PRIMARY KEY,
    chassi              VARCHAR(11) NOT NULL,
    anoFabricacao       DATE        NOT NULL,
    codigoModelo        INT         NOT NULL,
    codigoCategoria     INT         NOT NULL,
    CPF                 VARCHAR(11) NOT NULL,

    CONSTRAINT VEICULO_PROPRIETARIO_FK FOREIGN KEY (CPF) REFERENCES PROPRIETARIO (CPF),

    CONSTRAINT VEICULO_MODELO_FK FOREIGN KEY(codigoModelo) REFERENCES MODELO (codigoModelo),

    CONSTRAINT VEICULO_CATEGORIA_VEICULO_FK FOREIGN KEY (codigoCategoria) REFERENCES CATEGORIA_VEICULO (codigoCategoria)
);

CREATE TABLE CATEGORIA_INFRACAO (
    codigoInfracao  INT             NOT NULL PRIMARY KEY,
    valorMulta      DECIMAL(13, 2)  NOT NULL,
    descricao       VARCHAR(50)     NOT NULL
);

CREATE TABLE AGENTE (
    matriculaAgente INT         NOT NULL PRIMARY KEY,
    nome            VARCHAR(50)    NOT NULL,
    dtContratacao   DATE  NOT NULL
);

CREATE TABLE LOCAL(
    codigoLocal         INT             NOT NULL PRIMARY KEY,
    latitude            DECIMAL(10, 8)  NOT NULL,
    longitude           DECIMAL(10, 8)  NOT NULL,
    limiteVelocidade    INT             NOT NULL
);

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