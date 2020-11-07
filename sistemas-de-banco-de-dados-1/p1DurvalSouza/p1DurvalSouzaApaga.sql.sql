-- --------     << MATRICULA DE DISCIPLINAS >>     ------------
-- 
--                    SCRIPT DE APAGAR(DDL)
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

drop table pode;
drop table depende;
drop table email;
drop table PROFESSOR;
drop table DISCIPLINA;