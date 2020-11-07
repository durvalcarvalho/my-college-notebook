-- ---------------------   << VIDEO GAME  >>   ---------------------
--
--                    SCRIPT DE POPULAR (DML)
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

USE TF1_Durval;

INSERT INTO MODELO(idModelo, descModelo) VALUES
    (NULL, 'Xbox One X'),
    (NULL, 'Xbox One S'),
    (NULL, 'Xbox 360'),
    (NULL, 'Xbox 360 Slim'),
    (NULL, '3DS'),
    (NULL, 'Dreamcast'),
    (NULL, 'Game Boy Advance'),
    (NULL, 'GameCube'),
    (NULL, 'Nintendo 64'),
    (NULL, 'Switch'),
    (NULL, 'PSP'),
    (NULL, 'PlayStation'),
    (NULL, 'PlayStation 2'),
    (NULL, 'PlayStation 3'),
    (NULL, 'PlayStation 4'),
    (NULL, 'Wii');

INSERT INTO MARCA(idMarca, descMarca) VALUES
    (NULL, 'Microsoft'),
    (NULL, 'Nintendo'),
    (NULL, 'NeoGeo'),
    (NULL, 'Sony'),
    (NULL, 'Atari'),
    (NULL, 'Sega');


INSERT INTO LOJA(cep, numero, complemento, idLoja) VALUES
    (16020080, 1, 'Bloco C', NULL),
    (23953480, 2, 'A', NULL),
    (96222452, 3, 'Apto 3', NULL),
    (65071250, 13, 'Quadra 4', NULL),
    (58424192, 15, 'B', NULL),
    (16020131, 1, 'Apto C', NULL),
    (23955412, 2, 'D', NULL),
    (96222673, 3, 'Apto 32', NULL),
    (65071754, 13, 'Quadra 42', NULL),
    (58423125, 15, 'K', NULL);


INSERT INTO CARGO(idCargo, descCargo) VALUES
  (NULL, 'Gerente'),
  (NULL, 'Tecnico'),
  (NULL, 'Publicitário'),
  (NULL, 'Atendente'),
  (NULL, 'Jovem Aprendiz'),
  (NULL, 'Contador'),
  (NULL, 'Marketing'),
  (NULL, 'Estagiario'),
  (NULL, 'Supervisor'),
  (NULL, 'Dono');


INSERT INTO PESSOA(numero, complemento, cep, idPessoa) VALUES
    (4, 'Apto', 70852109, NULL),
    (3, 'Fazenda', 70852138, NULL),
    (4, 'Apto', 70852119, NULL),
    (28, 'Fazenda', 70852105, NULL),
    (9, 'Casa', 70852157, NULL),
    (2, 'Chacara', 70852172, NULL),
    (9, 'Apto', 70852101, NULL),
    (21, 'Fazenda', 70852153, NULL),
    (13, 'Casa', 70852128, NULL),
    (12, 'Fazenda', 70852117, NULL),
    (12, 'Fazenda', 70852174, NULL),
    (29, 'Condominio', 70852118, NULL),
    (7, 'Condominio', 70852124, NULL),
    (20, 'Chacara', 70852139, NULL),
    (28, 'Chacara', 70852145, NULL),
    (29, 'Casa', 70852149, NULL),
    (27, 'Condominio', 70852168, NULL),
    (11, 'Apto', 70852091, NULL),
    (16, 'Chacara', 70852161, NULL),
    (3, 'Condominio', 70852097, NULL),
    (20, 'Chacara', 70852176, NULL),
    (22, 'Condominio', 70852121, NULL),
    (9, 'Condominio', 70852113, NULL),
    (28, 'Fazenda', 70852143, NULL),
    (13, 'Apto', 70852120, NULL),
    (2, 'Chacara', 70852131, NULL),
    (5, 'Casa', 70852135, NULL),
    (25, 'Apto', 70852164, NULL),
    (6, 'Fazenda', 70852094, NULL),
    (27, 'Apto', 70852098, NULL);

INSERT INTO FORNECEDOR(cnpjFornecedor, atividadePrincipal, nomeEmpresa, idFornecedor) VALUES
    (23132132131,   'Venda de console',        'China Games',      1),
    (23132162131,   'Venda de console',        'India Games',      2),
    (23132164581,   'Venda de controle',       'Brazil Controls',  3),
    (33132164581,   'Venda de controle',       'Games and Cia',    4),
    (23132132221,   'Venda de Action Figure',  'Naruto Show',      5),
    (23132134221,   'Venda de Action Figure',  'Goku Show',        6),
    (23132132991,   'Venda de chaveiro',       '4UBag',            7),
    (23132132591,   'Venda de chaveiro',       'Toys Shows',       8),
    (23132132992,   'Venda de jogos',          'Game extreme',     9),
    (23132135531,   'Venda de jogos',          'PlayVideo',        10);

INSERT INTO FUNCIONARIO(salario, dtContratacao, dtDemissao, codigoBanco, nomeBanco, codigoConta, tipoConta, cpfFuncionario, nomeCompleto, idFuncionario) VALUES
    (1500, '2017-03-25', NULL, '341', 'Banco Itaú S.A.', 2747, 'POUPANCA', 56434893240, 'Francisco Magalhaes', 11),
    (2000, '2017-04-16', '2018-09-21', '745', 'Banco Citibank S.A.', 1956, 'CORRENTE', 56434893253, 'Juliana Cabral', 12),
    (2100, '2017-05-08', NULL, '104', 'Caixa Econômica Federal', 1096, 'CORRENTE', 56434946216, 'João Carvalho', 13),
    (900, '2017-09-02', NULL, '652', 'Itaú Unibanco Holding S.A.', 7958, 'SALARIO', 56434982774, 'Maria Gusmao', 14),
    (2100, '2017-09-28', NULL, '399', 'HSBC Bank Brasil S.A.', 7385, 'SALARIO', 56435071844, 'José Souza', 15),
    (2500, '2017-08-01', NULL, '453', 'Banco Rural S.A.', 7561, 'CORRENTE', 56435154384, 'Maria Peixoto', 16),
    (1200, '2017-06-07', NULL, '104', 'Caixa Econômica Federal', 5630, 'SALARIO', 56435174773, 'Juliana Cabral', 17),
    (2100, '2017-11-21', '2018-03-25', '652', 'Itaú Unibanco Holding S.A.', 2293, 'POUPANCA', 56435174782, 'Antônio Cabral', 18),
    (2000, '2017-10-19', NULL, '422', 'Banco Safra S.A.', 3398, 'SALARIO', 56435201873, 'João Peixoto', 19),
    (2000, '2017-03-02', '2018-10-11', '389', 'Banco Mercantil do Brasil S.A.', 4720, 'SALARIO', 56435201881, 'Francisco Gusmao', 20);

INSERT INTO CLIENTE(cpfCliente, saldo, nomeCompleto, idCliente) VALUES 
    (65065357997, 0.00, 'Carlos Souza', 21),
    (65065358023, 100.00, 'Juliana Souza', 22),
    (65065358031, 200.00, 'Antônio Peixoto', 23),
    (69423711969, 0.00, 'Francisco Gusmao', 24),
    (67275823804, 0.00, 'Juliana Gusmao', 25),
    (63733211142, 0.00, 'Antônio Hudge', 26),
    (63733211145, 200.00, 'Maria Peixoto', 27),
    (73093136540, 0.00, 'Antônio Hudge', 28),
    (71693600564, 0.00, 'Juliana Peixoto', 29),
    (71693600570, 25.00, 'José Cabral', 30);

INSERT INTO DEFEITO(idDefeito, descDefeito) VALUES
    (NULL, 'Botão quebrado'),
    (NULL, 'Analógico emperrado'),
    (NULL, 'Fonte queimada'),
    (NULL, 'Controle Queimado'),
    (NULL, 'Placa mãe queimada'),
    (NULL, 'CD emperrado'),
    (NULL, 'Placa mãe molhada'),
    (NULL, 'Controle molhado'),
    (NULL, 'HD Queimado'),
    (NULL, 'HD corrompido');

INSERT INTO email(idPessoa, email) VALUES
    (29, 'joao@gmail.com'),
    (24, 'ana@yahoo.com.br'),
    (12, 'antonio@yahoo.com.br'),
    (21, 'joao@gmail.com'),
    (23, 'juliana@gmail.com'),
    (30, 'sandra@gmail.com'),
    (26, 'joao@msn.com.br'),
    (4, 'antonio@outlook.com.br'),
    (6, 'antonio@yahoo.com'),
    (4, 'joao@yahoo.com'),
    (29, 'maria@msn.com'),
    (22, 'francisco@yahoo.com.br'),
    (20, 'joao@gmail.com'),
    (18, 'ana@yahoo.com'),
    (2, 'maria@yahoo.com'),
    (2, 'joao@outlook.com.br'),
    (28, 'carlos@hotmail.com'),
    (16, 'ana@gmail.com.br'),
    (16, 'jose@hotmail.com'),
    (24, 'joao@gmail.com'),
    (1, 'maria@msn.com'),
    (10, 'juliana@yahoo.com'),
    (19, 'maria@yahoo.com.br'),
    (6, 'adriana@msn.com.br'),
    (13, 'juliana@gmail.com.br'),
    (14, 'adriana@yahoo.com.br'),
    (14, 'sandra@outlook.com.br'),
    (12, 'jose@hotmail.com.br'),
    (7, 'ana@msn.com'),
    (27, 'ana@gmail.com.br'),
    (26, 'juliana@outlook.com.br');

INSERT INTO telefone(idPessoa, telefone) VALUES
    (15, '+40 (34) 4352-2158'),
    (28, '+29 (18) 4198-6616'),
    (7, '+40 (13) 9512-1205'),
    (20, '+88 (78) 1843-6536'),
    (28, '+12 (78) 2887-9277'),
    (5, '+89 (24) 2553-7420'),
    (14, '+49 (80) 4818-4155'),
    (3, '+95 (82) 1720-9556'),
    (14, '+82 (63) 1693-9912'),
    (4, '+80 (57) 8233-8614'),
    (25, '+56 (61) 5131-8461'),
    (10, '+17 (69) 6811-3657'),
    (7, '+50 (30) 9963-5799'),
    (8, '+11 (91) 1331-8363'),
    (2, '+50 (43) 6522-1639'),
    (1, '+33 (91) 2488-7774'),
    (3, '+36 (13) 9488-3044'),
    (18, '+68 (42) 6871-8444'),
    (30, '+82 (49) 5904-5367'),
    (9, '+26 (48) 5297-1420'),
    (17, '+43 (66) 7738-7389'),
    (17, '+58 (31) 4630-6896'),
    (12, '+75 (52) 9156-1794'),
    (5, '+56 (42) 4215-8667'),
    (28, '+16 (23) 3393-7690'),
    (14, '+58 (12) 4395-4331'),
    (23, '+73 (75) 9821-9944'),
    (24, '+10 (14) 8265-5538'),
    (4, '+16 (49) 8056-5547'),
    (2, '+60 (24) 9905-8837'),
    (1, '+51 (71) 6372-9554');
