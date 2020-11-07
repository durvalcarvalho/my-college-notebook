-- --------     << Clínica Médica - V5 >>     ------------
-- 
--                    SCRIPT DE CRIACAO (DDL)
-- 
-- Data Criacao ...........: 24/09/2019
-- Autor(es) ..............: Durval Carvalho de Souza
-- Banco de Dados .........: MySQL
-- Banco de Dados(nome) ...: bdClinica
-- 
-- Data Ultima Alteracao ..: 24/09/2019
--   => Criação das tabelas
-- 
-- PROJETO => 01 Base de Dados
--         => 09 Tabelas
-- -----------------------------------------------------------------

CREATE DATABASE IF NOT EXISTS bdClinica;
USE bdClinica;



CREATE TABLE IF NOT EXISTS PACIENTE (
	idPaciente 	 INT 		   NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nomeCompleto VARCHAR(100)  NOT NULL,
	dtNascimento DATE 		   NOT NULL,
	sexo 		 VARCHAR(100)  NOT NULL,
	rua  		 VARCHAR(100)  NOT NULL,
	numero  	 INT 		   NOT NULL,
	bairro 		 VARCHAR(100)  NOT NULL,
	complemento  VARCHAR(100),
	cidade 		 VARCHAR(100)  NOT NULL,
	estado 		 VARCHAR(50)   NOT NULL,
	cep 		 BIGINT        NOT NULL,

) ENGINE = InnoDb AUTO_INCREMENT = 1;




CREATE TABLE IF NOT EXISTS telefone (
	idPaciente 	INT 	NOT NULL,
	telefone 	BIGINT 	NOT NULL,

	CONSTRAINT telefone_PACIENTE_FK FOREIGN KEY (idPaciente)
		REFERENCES PACIENTE (idPaciente)
);



CREATE TABLE IF NOT EXISTS MEDICO (
	idMedico 	 INT 		  NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nomeCompleto varchar(100) NOT NULL,
	crm			 BIGINT 	  NOT NULL

) ENGINE = InnoDb AUTO_INCREMENT = 1;



CREATE TABLE IF NOT EXISTS ESPECIALIDADE(
	idEspecialidade INT 		 NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nome 			VARCHAR(100) NOT NULL,


) ENGINE = InnoDb AUTO_INCREMENT = 1;



CREATE TABLE IF NOT EXISTS possui (
	idMedico 		INT NOT NULL,
	idEspecialidade INT NOT NULL,

	CONSTRAINT contem_MEDICO_PK FOREIGN KEY (idMedico)
		REFERENCES MEDICO (idMedico)

	CONSTRAINT contem_ESPECIALIDADE_PK FOREIGN KEY (idEspecialidade)
		REFERENCES ESPECIALIDADE (idEspecialidade)
);



CREATE TABLE IF NOT EXISTS CONSULTA (
	idConsulta 	INT 		NOT NULL AUTO_INCREMENT PRIMARY KEY,
	dataHora 	TIMESTAMP 	NOT NULL,
	idMedico 	INT 		NOT NULL,
	idPaciente 	INT 		NOT NULL,

	CONSTRAINT CONSULTA_MEDIDO_FK FOREIGN KEY (idMedico) 
		REFERENCES MEDICO(idMedico)
	CONSTRAINT CONSULTA_PACIENTE_FK FOREIGN KEY (idPaciente) 
		REFERENCES PACIENTE(idPaciente)

) ENGINE = InnoDb AUTO_INCREMENT = 1;



CREATE TABLE IF NOT EXISTS RECEITA (
	idReceita  INT 			NOT NULL AUTO_INCREMENT PRIMARY KEY,
	posologia  VARCHAR(100) NOT NULL,
	idConsulta INT 			NOT NULL,

	CONSTRAINT RECEITA_CONSULTA_FK FOREIGN KEY (idConsulta)
		REFERENCES CONSULTA (idConsulta)

) ENGINE = InnoDb AUTO_INCREMENT = 1;



CREATE TABLE IF NOT EXISTS MEDICAMENTO (
	idMedicamento  INT 			NOT NULL AUTO_INCREMENT PRIMARY KEY,
	principioAtivo VARCHAR(100) NOT NULL,


) ENGINE = InnoDb AUTO_INCREMENT = 1;



CREATE TABLE IF NOT EXISTS contem (
	idReceita 		INT NOT NULL,
	idMedicamento 	INT NOT NULL,

	CONSTRAINT contem_RECEITA_FK FOREIGN KEY (idReceita)
		REFERENCES RECEITA (idReceita)

	CONSTRAINT contem_MEDICAMENTO_PK FOREIGN KEY (idMedicamento)
		REFERENCES MEDICAMENTO (idMedicamento)
);