-- ----------------     << Clínica Médica >>     --------------------
--
--                    SCRIPT DE CRIACAO (DDL)
--
-- Data Criacao ...........: 14/10/2019
-- Autor(es) ..............: Gabriel Marques Tiveron
-- Banco de Dados .........: MySQL
-- Banco de Dados(nome) ...: aula4exer5evolucao6
--
-- date Ultima Alteracao ..: 14/10/2019
--   => Adição das ENGINES e AUTO_INCREMENT
--
-- PROJETO => 01 Base de Dados
--         => 09 Tabelas
-- -------------------------------------------------------------------

CREATE DATABASE IF NOT EXISTS aula4exer5evolucao6;
USE aula4exer5evolucao6;

CREATE TABLE MEDICO (
    nome varchar(20) NOT NULL,
    crm bigint NOT NULL,
    estado varchar(2) NOT NULL,
    CONSTRAINT MEDICO_PK PRIMARY KEY (crm, estado)
)ENGINE=INNODB;

CREATE TABLE PACIENTE (
    nome varchar(20) NOT NULL,
    dtNascimento date NOT NULL,
    sexo varchar(1) NOT NULL,
    cep bigint,
    rua varchar(10),
    bairro varchar(20),
    numero INT,
    complemento varchar(10),
    cidade varchar(20),
    estado varchar(2),
    cpf varchar(11) NOT NULL PRIMARY KEY
)ENGINE=INNODB;

CREATE TABLE CONSULTA_atende (
    dtHora timestamp NOT NULL,
    idConsulta INT NOT NULL AUTO_INCREMENT,
    cpf varchar(11) NOT NULL,
    crm bigint NOT NULL,
    estado varchar(2) NOT NULL,

    CONSTRAINT CONSULTA_PK PRIMARY KEY(idConsulta),  
    CONSTRAINT CONSULTA_UK UNIQUE (estado, crm, dtHora),
    CONSTRAINT consulta_MEDICO FOREIGN KEY(crm, estado)
      REFERENCES MEDICO(crm, estado),
    CONSTRAINT consulta_PACIENTE FOREIGN KEY(cpf)
      REFERENCES PACIENTE(cpf)
)ENGINE=INNODB AUTO_INCREMENT=1;

CREATE TABLE RECEITA (
    posologia varchar(20),
    idReceita INT NOT NULL AUTO_INCREMENT,
    idConsulta INT NOT NULL,

    CONSTRAINT RECEITA_PK PRIMARY KEY(idReceita),
    CONSTRAINT receita_CONSULTA FOREIGN KEY(idConsulta)
      REFERENCES CONSULTA_atende(idConsulta)
)ENGINE=INNODB AUTO_INCREMENT=1;

CREATE TABLE ESPECIALIDADE (
    nome varchar(20) NOT NULL,
    idEspecialidade INT NOT NULL AUTO_INCREMENT,

    CONSTRAINT ESPECIALIDADE_PK PRIMARY KEY(idEspecialidade)
)ENGINE=INNODB AUTO_INCREMENT=1;

CREATE TABLE MEDICAMENTO (
    tarja varchar(10),
    nomeFantasia varchar(20),
    idMedicamento INT NOT NULL AUTO_INCREMENT,
    principioAtivo varchar(20) NOT NULL,

    CONSTRAINT MEDICAMENTO_PK PRIMARY KEY(idMedicamento)
)ENGINE=INNODB AUTO_INCREMENT=1;

CREATE TABLE telefone (
    cpf varchar(11) NOT NULL,
    telefone bigint NOT NULL,

    CONSTRAINT telefone_PACIENTE FOREIGN KEY(cpf)
      REFERENCES PACIENTE(cpf),
    PRIMARY KEY (cpf, telefone)
)ENGINE=INNODB;

CREATE TABLE possui (
    idEspecialidade INT NOT NULL,
    crm bigint NOT NULL,
    estado varchar(2) NOT NULL,

    CONSTRAINT possui_MEDICO FOREIGN KEY(crm, estado)
      REFERENCES MEDICO(crm, estado),
    CONSTRAINT possui_ESPECIALIDADE FOREIGN KEY(idEspecialidade)
      REFERENCES ESPECIALIDADE(idEspecialidade)
)ENGINE=INNODB;

CREATE TABLE contem (
    idMedicamento INT NOT NULL,
    idReceita INT NOT NULL
)ENGINE=INNODB;
