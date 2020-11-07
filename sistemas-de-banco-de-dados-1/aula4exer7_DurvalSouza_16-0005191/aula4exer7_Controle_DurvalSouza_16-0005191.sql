-- --------     << Empresa FUI >>     ------------
-- 
-- SCRIPT DE Controle (DML)
-- 
-- Data Criacao ...........: 06/10/2019
-- Autor(es) ..............: Durval Carvalho de Souza
-- Banco de Dados .........: MySQL
-- Banco de Dados(nome) ...: aula4exer7
-- 
-- PROJETO => 01 Base de Dados
--         => 10 Tabelas
-- -----------------------------------------------------------------

use aula4exer7;

CREATE USER GERENTE IDENTIFIED BY 'ger2019';
GRANT ALL PRIVILEGES ON aula4exer7.* TO 'GERENTE'@'%';

CREATE USER EMPREGADO IDENTIFIED BY '2019emp';

GRANT SELECT, SHOW VIEW ON 
aula4exer7.* TO 'EMPREGADO'@'%';

GRANT SELECT, INSERT, SHOW VIEW ON 
aula4exer7.DEPENDENTE TO 'EMPREGADO'@'%';

FLUSH PRIVILEGES;
