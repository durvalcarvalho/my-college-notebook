-- ---------------------   << VIDEO GAME  >>   ---------------------
--
--                    SCRIPT DE CONSULTA (DML)
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

-- VIEW PARA CONSULTAR TODOS OS CONSOLES CADASTRADO NO SISTEMA
CREATE VIEW CONSOLE_CADASTRADOS AS
SELECT MA.descricao as marca, MO.descricao as modelo, CO.armazenamento, PR.condicao, PR.codSerie, PR.precoCompra, PR.cor
FROM PRODUTO AS PR
INNER JOIN CONSOLE AS CO ON PR.idCategoria=CO.idCategoriaConsole
INNER JOIN MARCA AS MA ON MA.idMarca=CO.idMarca
INNER JOIN MODELO AS MO ON MO.idModelo=CO.idModelo;

-- VIEW PARA CONSULTAR TODOS OS ACESSORIOS DE CONSOLE CADASTRO NO SISTEMA
CREATE VIEW ACESSORIO_CADASTRADOS AS
SELECT AC.tipo, MO.descricao, PR.cor, PR.precoCompra, PR.codSerie, PR.condicao
FROM PRODUTO AS PR
INNER JOIN ACESSORIOCONSOLE AS AC ON PR.idCategoria=AC.idCategoriaAcessorioConsole
INNER JOIN MODELO AS MO ON MO.idModelo=AC.idModelo;

-- VIEW PARA CONSULTAR OS JOGOS NO ESTOQUE
CREATE VIEW JOGOS_ESTOQUE AS
SELECT JO.titulo, JO.saga, PR.precoCompra, PR.condicao
FROM PRODUTO AS PR
INNER JOIN JOGO AS JO ON PR.idCategoria=JO.idCategoriaJogo;


-- VIEW PARA CONSULTAR OS ACTION FIGURES NO ESTOQUE
CREATE VIEW ACTIONFIGURES_ESTOQUE AS
SELECT AC.fabricante, AC.escala, PR.cor, PR.precoCompra
FROM PRODUTO AS PR
INNER JOIN ACTIONFIGURE AS AC ON PR.idCategoria=AC.idCategoriaActionFigure;

-- VIEW PARA CONSULTAR TODOS OS CHAVEIROS NO ESTOQUE
CREATE VIEW CHAVEIRO_ESTOQUE AS
SELECT CH.tamanho, CH.material, PR.cor, PR.precoCompra
FROM PRODUTO AS PR
INNER JOIN CHAVEIRO AS CH ON PR.idCategoria=CH.idCategoriaChaveiro;

-- VIEW PARA CONSULTAR TODOS OS PRODUTOS QUE ESTÃO PARA REPARO,
-- O DONO DOS PRODUTOS, STATUS DO REPARO E DATA DE ENTRADA
CREATE VIEW PRODUTOS_REPARO AS
SELECT CA.descricao AS produto, PE.nome, PR.codSerie, PR.cor, RE.dtEntrada, RE.status, RE.descricao
FROM REPARO RE
INNER JOIN contem CO on CO.idReparo=RE.idReparo
INNER JOIN PRODUTO PR ON PR.idProduto=CO.idProduto
INNER JOIN CATEGORIA CA ON CA.idCategoria=PR.idCategoria
INNER JOIN PESSOA PE ON PE.idPessoa=RE.idPessoaCliente;