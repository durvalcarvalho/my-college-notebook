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

use bdClinica;

DROP TABLE IF EXISTS contem;
DROP TABLE IF EXISTS MEDICAMENTO;
DROP TABLE IF EXISTS RECEITA;

DROP TABLE IF EXISTS CONSULTA;

DROP TABLE IF EXISTS telefone;
DROP TABLE IF EXISTS PACIENTE;


DROP TABLE IF EXISTS possui;
DROP TABLE IF EXISTS ESPECIALIDADE;
DROP TABLE IF EXISTS MEDICO;