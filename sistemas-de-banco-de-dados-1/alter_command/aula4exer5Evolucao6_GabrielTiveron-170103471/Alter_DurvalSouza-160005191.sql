-- ----------------     << Clínica Médica >>    ------------
--
--                    SCRIPT DE ALTERAÇÃO (DDL)
--
-- Data Criacao ...........: 20/11/2019
-- Autor(es) ..............: Durval Carvalho de Souza
-- Banco de Dados .........: MySQL
-- Banco de Dados(nome) ...: aula4exer5evolucao6
--
-- PROJETO => 01 Base de Dados
--         => 09 Tabelas
-- ---------------------------------------------------------

USE aula4exer5evolucao6;

-- 1) Incluir uma nova coluna (atributo codigoBarra) na 
--    tabela MEDICAMENTO com tipo VARCHAR e tamanho (50) 
--    que deverá também ser armazenado

ALTER TABLE MEDICAMENTO
ADD COLUMN codigoBarra varchar(50);

-- 2) Colocar a restrição de NOT NULL na nova coluna 
--    (atributo codigoBarra) que foi adicionada na 
--    atividade anterior (exercício 1);

UPDATE MEDICAMENTO
SET codigoBarra = ''
WHERE codigoBarra IS NULL;

ALTER TABLE MEDICAMENTO
MODIFY COLUMN codigoBarra varchar(50) NOT NULL DEFAULT '';

-- 3) Na tabela TELEFONE deverá ser criada a restrição de 
--    UNIQUE denominada telefone_UK com cpf e telefone 
--    para evitar que uma mesma pessoa tenha a o mesmo 
--    telefone cadastrado mais que uma vez para ela mesma;

ALTER TABLE telefone
ADD CONSTRAINT telefone_UK UNIQUE KEY(cpf, telefone);

-- 4) O atributo estado na tabela MEDICO deverá ser 
--    renomeado para sigla.

-- 5) Muda a base padrão de caracteres da base de dados
ALTER TABLE MEDICO
CHANGE COLUMN estado sigla varchar(2) NOT NULL;

-- 6) Mudar uma view sem apagá-la
CREATE VIEW MEDICO_ESPECIALIDADE AS 
SELECT M.nome, E.nome AS especialidade
FROM MEDICO AS M JOIN possui P 
ON (M.sigla=P.estado AND M.crm=P.crm)
JOIN ESPECIALIDADE AS E 
ON (E.idEspecialidade=P.idEspecialidade);

ALTER VIEW MEDICO_ESPECIALIDADE AS 
SELECT M.nome, M.crm, E.nome AS especialidade
FROM MEDICO AS M JOIN possui P 
ON (M.sigla=P.estado AND M.crm=P.crm)
JOIN ESPECIALIDADE AS E 
ON (E.idEspecialidade=P.idEspecialidade);
