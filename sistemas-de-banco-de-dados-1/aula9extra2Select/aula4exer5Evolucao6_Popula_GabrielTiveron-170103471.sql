-- ----------------     << Clínica Médica >>     --------------------
--
--                    SCRIPT DE POPULAÇÃO (DML)
--
-- Data Criacao ...........: 14/10/2019
-- Autor(es) ..............: Gabriel Marques Tiveron
-- Banco de Dados .........: MySQL
-- Banco de Dados(nome) ...: aula4exer5evolucao6
--
-- date Ultima Alteracao ..: 14/10/2019
--   => Ajustes nas tuplas para usar auto_increment
--
-- PROJETO => 01 Base de Dados
--         => 09 Tabelas
-- -------------------------------------------------------------------

INSERT INTO medico (nome, crm, estado)
VALUES ('Vandenilson', 4128734, 'SP'),
       ('José', 412734, 'SP'),
       ('Isabelle', 4128735, 'MG');


INSERT INTO paciente (nome, dtnascimento, sexo, cpf)
VALUES ('Ana Claudia', '1997-07-07', 'F', '12345678910'),
       ('Ecreosvaldo', '1923-03-23', 'M', '10987654321'),
       ('Cleyton', '1940-06-29', 'M', '54321109876');


INSERT INTO consulta_atende (dthora, cpf, crm, estado)
VALUES ('2002-05-02 14:00:00', '10987654321', 4128734, 'SP'),
       ('2009-11-28 09:30:00', '12345678910', 4128735, 'MG'),
       ('2009-11-28 10:00:00', '10987654321', 4128735, 'MG'),
       ('2017-03-09 08:40:00', '54321109876', 412734, 'SP');


INSERT INTO receita (idconsulta)
VALUES (3),
       (1),
       (2);


INSERT INTO receita (idconsulta, posologia)
VALUES (4, 'Cada 2 horas');


INSERT INTO especialidade (nome)
VALUES ('Urologia'),
       ('Endocrinologia'),
       ('Nefrologia'),
       ('Cardiologista');


INSERT INTO medicamento (principioativo)
VALUES ('Naproxeno Sódico'),
       ('Fentolamina'),
       ('Oprelvecina');


INSERT INTO telefone (cpf, telefone)
VALUES ('12345678910', 77777777),
       ('10987654321', 88888888),
       ('54321109876', 55555555);


INSERT INTO possui (idespecialidade, crm, estado)
VALUES (1, 4128735, 'MG'),
       (3, 412734, 'SP'),
       (2, 4128734, 'SP');


INSERT INTO contem (idmedicamento, idreceita)
VALUES (1, 2),
       (2, 2),
       (3, 3);