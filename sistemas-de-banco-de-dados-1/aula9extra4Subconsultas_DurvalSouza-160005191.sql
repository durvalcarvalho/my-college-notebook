-- ----------------     << Clínica Médica >>     --------------------
--
--                    SCRIPT DE Consulta (DML)
--
-- Data Criacao ...........: 12/11/2019
-- Autor(es) ..............: Durval Carvalho de Souza
-- Banco de Dados .........: MySQL
-- Banco de Dados(nome) ...: aula4exer5evolucao6
--
-- PROJETO => 01 Base de Dados
--         => 09 Tabelas
-- -------------------------------------------------------------------


-- SUBCONSULTA 1
-- OBJETIVO: Contar quantos médicos de cada estado realizaram consultas
SELECT estado, count(estado) 
FROM (SELECT estado FROM CONSULTA_atende) as TMP 
GROUP BY estado;

Contar quantas pessoas do mesmo sexo foram cadastradas

-- SUBCONSULTA 2
-- OBJETIVO: Contar quantos paciêntes do sexo masculino e feminino realizaram consultas
select sexo, count(sexo)
from (SELECT sexo FROM PACIENTE) as tmp 
group by sexo;
