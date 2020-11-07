-- ---------------------   << VIDEO GAME  >>   ---------------------
--
--                    SCRIPT DE CRIAÇÂO DE USUÁRIO (DDL)
--
-- Data Criacao ...........: 04/12/2019
-- Autor(es) ..............: Durval Carvalho e Geraldo Victor
-- Banco de Dados .........: MySQL
-- Banco de Dados(nome) ...: TF1_Durval
--
--
-- PROJETO => 01 Base de Dados
--         => 23 Tabelas
--
-- -----------------------------------------------------------------


CREATE USER IF NOT EXISTS 'admin'@'localhost' IDENTIFIED BY '@d2019';
GRANT ALL PRIVILEGES ON TF1_Durval.* TO 'admin'@'localhost';


CREATE USER IF NOT EXISTS 'user'@'localhost' IDENTIFIED BY 'uso2019';
GRANT SELECT ON TF1_Durval.* TO 'admin'@'localhost';

FLUSH PRIVILEGES;