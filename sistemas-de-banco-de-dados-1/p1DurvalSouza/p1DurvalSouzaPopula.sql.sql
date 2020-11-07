-- --------     << MATRICULA DE DISCIPLINAS >>     ------------
-- 
--                    SCRIPT DE POPULA(DML)
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

INSERT INTO DISCIPLINA VALUES(
'Computacao Basica',
'CB',
'6',
'1'
);

INSERT INTO DISCIPLINA VALUES(
'Engenharia e Ambiente',
'EA',
'4',
'1'
);

INSERT INTO DISCIPLINA VALUES(
'Estrutura de Dados 1',
'EDA1',
'4',
'2'
);

INSERT INTO DISCIPLINA VALUES(
'Metodos de Desenvolvimento de Software',
'MDS',
'4',
'3'
);

INSERT INTO PROFESSOR VALUES(
'Carla',
'Rocha',
'1980-01-12',
'F',
NULL
);

INSERT INTO PROFESSOR VALUES(
'Edson',
'Alves',
'1970-01-12',
'M',
NULL
);

INSERT INTO email VALUES(
2,
'edson@alves.com'
);

INSERT INTO email VALUES(
1,
'carla@rocha.com'
);

INSERT INTO depende VALUES(
'MDS',
'EDA1'
);

INSERT INTO depende VALUES(
'MDS',
'EA'
);

INSERT INTO pode VALUES(
1,
'EA'
);

INSERT INTO pode VALUES(
2,
'MDS'
);


