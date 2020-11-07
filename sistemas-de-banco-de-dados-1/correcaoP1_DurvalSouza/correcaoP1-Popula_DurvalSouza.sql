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
-- Data Ultima Alteracao ..: 21/10/2019
--   => Adição de novos dados
--   => Remoção do comando create database
-- 
-- -----------------------------------------------------------------

USE durvalsouza;

INSERT INTO DISCIPLINA VALUES(
'Computacao Basica',
'CB',
'6',
'1'
);

INSERT INTO DISCIPLINA VALUES(
'CÁLCULO 1',
'C1',
'6',
'1'
);

INSERT INTO DISCIPLINA VALUES(
'Estrutura de Dados 1',
'EDA1',
'4',
'4'
);

INSERT INTO DISCIPLINA VALUES(
'Metodos de Desenvolvimento de Software',
'MDS',
'4',
'4'
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

INSERT INTO PROFESSOR VALUES(
'TIAGO',
'FONSECA',
'1960-01-12',
'M',
NULL
);

INSERT INTO PROFESSOR VALUES(
'JOYCE',
'SIQUEIRA',
'1950-01-12',
'M',
NULL
);

INSERT INTO email VALUES(
1,
'carla@rocha.com'
);

INSERT INTO email VALUES(
2,
'edson@alves.com'
);

INSERT INTO email VALUES(
3,
'tiago@fonseca.com'
);

INSERT INTO email VALUES(
4,
'joyce@siqueira.com'
);

INSERT INTO depende VALUES(
'MDS',
'EDA1'
);

INSERT INTO depende VALUES(
'EDA1',
'CB'
);

INSERT INTO depende VALUES(
'EDA1',
'C1'
);

INSERT INTO depende VALUES(
'MDS',
'C1'
);

INSERT INTO pode VALUES(
1,
'C1'
);

INSERT INTO pode VALUES(
2,
'CB'
);

INSERT INTO pode VALUES(
3,
'EDA1'
);

INSERT INTO pode VALUES(
4,
'MDS'
);