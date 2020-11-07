-- --------     Aula4Exer6 - Evolucao 3 ------------
-- 
-- SCRIPT DE CRIACAO (DDL)
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

CREATE DATABASE IF NOT EXISTS aula4exer6Evolucao3;
USE aula4exer6Evolucao3;

CREATE TABLE PROPRIETARIO (
    cpf     VARCHAR(11)     NOT NULL,
    nome    VARCHAR(50)     NOT NULL,
    sexo    ENUM('M', 'F')  NOT NULL,
    dtNasc  DATE            NOT NULL,
    cidade  VARCHAR(50)     NOT NULL,
    bairro  VARCHAR(50)     NOT NULL,
    estado  VARCHAR(50)     NOT NULL,

    CONSTRAINT PROPRIETARIO_PK PRIMARY KEY(cpf)
);

CREATE TABLE TELEFONES (
    cpf         VARCHAR(11)     NOT NULL,
    telefone    VARCHAR(14)     NOT NULL,

    CONSTRAINT TELEFONES_PROPRIETARIO FOREIGN KEY(cpf)  REFERENCES PROPRIETARIO(cpf)
);

CREATE TABLE MODELO_VEICULO (
    codigoModelo    INT             AUTO_INCREMENT,
    descModelo      VARCHAR(50),

    CONSTRAINT MODELO_VEICULO_PK PRIMARY KEY(codigoModelo)

)   ENGINE = InnoDB AUTO_INCREMENT = 1;


CREATE TABLE CATEGORIA_VEICULO (
    codigoCategoria INT             AUTO_INCREMENT,
    descCategoria   VARCHAR(50),

    CONSTRAINT CATEGORIA_VEICULO_PK PRIMARY KEY(codigoCategoria)

)   ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE VEICULO (
    corPredominante     VARCHAR(15)     NOT NULL,
    anoFab              DATE            NOT NULL,
    chassi              VARCHAR(11)     NOT NULL,
    placa               VARCHAR(7)      NOT NULL,
    cpf                 VARCHAR(11)     NOT NULL,
    codigoCategoria     INT             NOT NULL,
    codigoModelo        INT             NOT NULL,

    CONSTRAINT VEICULO_PK               PRIMARY KEY(placa),
    CONSTRAINT VEICULO_CHASSI_UN        UNIQUE(chassi),
    CONSTRAINT VEICULO_PROPRIETARIO_FK  FOREIGN KEY(cpf)                REFERENCES PROPRIETARIO(cpf),
    CONSTRAINT VEICULO_MODELO_FK        FOREIGN KEY(codigoModelo)       REFERENCES MODELO_VEICULO(codigoModelo),
    CONSTRAINT VEICULO_CATEGORIA_FK     FOREIGN KEY(codigoCategoria)    REFERENCES CATEGORIA_VEICULO(codigoCategoria)
);

CREATE TABLE CATEGORIA_INFRACAO (
    codigoInfracao  INT             NOT NULL    AUTO_INCREMENT,
    valorInfracao   DECIMAL(6,2)    NOT NULL,
    descInfracao    VARCHAR(50)     NOT NULL,

    CONSTRAINT CATEGORIA_INFRACAO_PK PRIMARY KEY(codigoInfracao)

) ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE AGENTE (
    matriculaAgente     INT             NOT NULL    AUTO_INCREMENT,
    nome                VARCHAR(50)     NOT NULL,
    dtContratacao       DATE            NOT NULL,

    CONSTRAINT AGENTE_PK PRIMARY KEY(matriculaAgente)

) ENGINE = InnoDB AUTO_INCREMENT=1;


CREATE TABLE LOCAL (
    codLocal                INT             NOT NULL    AUTO_INCREMENT,
    latitude                DECIMAL(10, 8)  NOT NULL,
    longitude               DECIMAL(10, 8)  NOT NULL,
    velocidadePermitida     INT             NOT NULL,

    CONSTRAINT LOCAL_PK PRIMARY KEY(codLocal)

) ENGINE = InnoDB AUTO_INCREMENT=1;

CREATE TABLE INFRACAO (
    velocidadeAferida   INT             NOT NULL,
    placa               VARCHAR(7)      NOT NULL,
    codLocal            INT             NOT NULL,
    codigoInfracao      INT             NOT NULL,
    matriculaAgente     INT             NOT NULL,
    dtHora              DATE            NOT NULL,

    CONSTRAINT INFRACAO_VEICULO_FK              FOREIGN KEY(placa)           REFERENCES VEICULO(placa),
    CONSTRAINT INFRACAO_LOCAL_FK                FOREIGN KEY(codLocal)        REFERENCES LOCAL(codLocal),
    CONSTRAINT INFRACAO_CATEGORIA_INFRACAO_FK   FOREIGN KEY(codigoInfracao)  REFERENCES CATEGORIA_INFRACAO(codigoInfracao),
    CONSTRAINT INFRACAO_AGENTE_FK               FOREIGN KEY(matriculaAgente) REFERENCES AGENTE(matriculaAgente),
    
    CONSTRAINT INFRACAO_PK                      PRIMARY KEY(placa, dtHora, codigoInfracao)
);