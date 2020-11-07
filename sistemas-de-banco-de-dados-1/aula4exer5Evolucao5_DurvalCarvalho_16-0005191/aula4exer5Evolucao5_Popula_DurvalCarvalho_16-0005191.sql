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

USE bdClinica;

INSERT INTO MEDICO VALUES (
	NULL,
	'Tim Berners-Lee',
	97531
);

INSERT INTO MEDICO VALUES (
	NULL,
	'Dennis Ritchie',
	95511
);

INSERT INTO PACIENTE VALUES (
    NULL,
    'Bjarne Stroustrup',
    '1950-12-30',
    'M',
    'Huntington Beach',
    8125,
    'Riverview Avenue',
    NULL,
    'Huntington',
    'CA',
    92647
);

INSERT INTO PACIENTE VALUES (
    NULL,
    'Guido van Rossum',
    '1956-01-31',
    'M',
    'North Hollywood',
    9342,
    'East Middle River St.',
    NULL,
    'Hollywood',
    'CA',
    91605
);

INSERT INTO telefone VALUES (
    1,
    5561999122332
);

INSERT INTO telefone VALUES (
    2,
    5561949152632
);

INSERT INTO MEDICAMENTO VALUES (
    NULL,
    "Thiocaine Afluposide"
);


INSERT INTO MEDICAMENTO VALUES (
    NULL,
    "Aldacxetine Micromin"
);

INSERT INTO ESPECIALIDADE VALUES (
    NULL,
    'Cirurgião plástico'
);

INSERT INTO ESPECIALIDADE VALUES (
    NULL,
    'Ortopedista'
);

INSERT INTO possui VALUES (
    1,
    1
);

INSERT INTO possui VALUES (
    1,
    2
);

INSERT INTO possui VALUES (
    2,
    2
);

INSERT INTO CONSULTA VALUES (
    NULL,
    NOW(),
    1,
    2
);

INSERT INTO CONSULTA VALUES (
    NULL,
    NOW(),
    2,
    1
);

INSERT INTO CONSULTA VALUES (
    NULL,
    NOW(),
    1,
    1
);

INSERT INTO RECEITA VALUES (
    NULL,
    '8 em 8 horas durante 7 dias',
    1
);

INSERT INTO RECEITA VALUES (
    NULL,
    '12 em 12 horas durante 5 dias',
    2
);

INSERT INTO RECEITA VALUES (
    NULL,
    '4 em 4 horas durante 2 dias',
    3
);

INSERT INTO contem VALUES (
    1, 
    1
);

INSERT INTO contem VALUES (
    3, 
    2
);

INSERT INTO contem VALUES (
    2, 
    2
);