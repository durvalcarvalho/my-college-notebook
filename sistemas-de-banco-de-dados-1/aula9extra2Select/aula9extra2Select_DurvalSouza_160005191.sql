-- ----------------     << Clínica Médica >>     --------------------
--
--                    SCRIPT DE CONSULTA (DML)
--
-- Data Criacao ...........: 31/10/2019
-- Autor(es) ..............: Durval Carvalho de Souza
-- Banco de Dados .........: MySQL
-- Banco de Dados(nome) ...: aula9extra2Select
--
-- PROJETO => 01 Base de Dados
--         => 09 Tabelas
-- -------------------------------------------------------------------

USE aula4exer5evolucao6;

-- 1
SELECT M.idMedicamento, M.nomeFantasia, M.tarja, M.principioAtivo 
FROM MEDICAMENTO AS M INNER JOIN contem AS c 
ON (c.idMedicamento=M.idMedicamento AND c.idReceita=2);

-- 2
SELECT E.idEspecialidade, E.nome, M.nome, M.crm, M.estado
FROM ESPECIALIDADE as E LEFT OUTER JOIN possui as P
ON (E.idEspecialidade=P.idEspecialidade)
LEFT OUTER JOIN MEDICO as M
ON (M.crm=P.crm and M.estado=P.estado);

-- 3
SELECT CA.idConsulta, CA.dtHora, M.nome as MedicoNome, M.crm, M.estado, P.nome as PacienteNome, P.cpf as PacienteCPF
FROM CONSULTA_atende AS CA
INNER JOIN PACIENTE AS P 
INNER JOIN MEDICO AS M
ON (M.crm=CA.crm and M.estado=CA.estado and P.cpf = CA.cpf AND dtHora>'2002-05-01' AND dtHora<'2002-05-03');

-- 4
SELECT M.nome, M.crm, M.estado, COUNT(*) AS qntPacientes 
FROM CONSULTA_atende as CA  
INNER JOIN MEDICO AS M
ON (M.crm=CA.crm and M.estado=CA.estado)
GROUP BY CA.crm, CA.estado;

-- 5
SELECT * FROM PACIENTE WHERE nome LIKE '%Cley%'