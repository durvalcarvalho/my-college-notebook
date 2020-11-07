-- ---------------------   << VIDEO GAME  >>   ---------------------
--
--                    SCRIPT DE CRIAÇÃO (DDL)
--
-- Data Criacao ...........: 07/12/2019
-- Autor(es) ..............: Durval Carvalho, Geraldo Victor, Iago Theophilo e Gabriel Tiveron
-- Banco de Dados .........: MySQL
-- Banco de Dados(nome) ...: TF1A_Gabriel
--
--
-- PROJETO => 01 Base de Dados
--         => 23 Tabelas
--
-- -----------------------------------------------------------------

CREATE DATABASE IF NOT EXISTS TF1A_Gabriel
    DEFAULT CHARACTER SET utf8
    DEFAULT COLLATE utf8_general_ci;

USE TF1A_Gabriel;

CREATE TABLE PESSOA (
    cep         INT                 NOT NULL,
    complemento VARCHAR(30)         NOT NULL,
    numero      INT                 NOT NULL,
    idPessoa    INT AUTO_INCREMENT  NOT NULL ,

    CONSTRAINT PESSOA_PK PRIMARY KEY (idPessoa)
)   ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE FORNECEDOR (
    cnpjFornecedor      BIGINT          NOT NULL,
    atividadePrincipal  VARCHAR(150)    NOT NULL,
    nomeEmpresa         VARCHAR(100)    NOT NULL,
    idFornecedor        INT             NOT NULL,

    CONSTRAINT FORNECEDOR_UK UNIQUE KEY(cnpjFornecedor),
    CONSTRAINT PESSOA_FORNCEDOR_FK FOREIGN KEY (idFornecedor)
        REFERENCES PESSOA(idPessoa),
    CONSTRAINT FORNECEDOR_PK PRIMARY KEY (idFornecedor)
)   ENGINE = InnoDB;

CREATE TABLE FUNCIONARIO (
    salario         DECIMAL(8,2)    NOT NULL,
    dtContratacao   DATE            NOT NULL,
    dtDemissao      DATE,
    codigoBanco     INT             NOT NULL,
    tipoConta       ENUM('CORRENTE','POUPANCA','SALARIO') NOT NULL,
    codigoConta     INT             NOT NULL,
    nomeBanco       VARCHAR(30)     NOT NULL,
    cpfFuncionario  BIGINT          NOT NULL,
    nomeCompleto    VARCHAR(50)     NOT NULL,
    idFuncionario   INT             NOT NULL,

    CONSTRAINT PESSOA_FUNCIONARIO_FK FOREIGN KEY (idFuncionario)
        REFERENCES PESSOA(idPessoa),
    CONSTRAINT FUNCIONARIO_UK UNIQUE KEY(cpfFuncionario),
    CONSTRAINT FUNCIONARIO_PK PRIMARY KEY (idFuncionario)
)ENGINE = InnoDB;

CREATE TABLE CARGO (
    idCargo     INT AUTO_INCREMENT  NOT NULL ,
    descCargo   VARCHAR(50)         NOT NULL,

    CONSTRAINT CARGO_UK UNIQUE KEY(descCargo),
    CONSTRAINT CARGO_PK PRIMARY KEY (idCargo)
)ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE DEFEITO (
    descDefeito VARCHAR(50)         NOT NULL,
    idDefeito   INT AUTO_INCREMENT  NOT NULL,

    CONSTRAINT DEFEITO_UK UNIQUE KEY(descDefeito),
    CONSTRAINT DEFEITO_PK PRIMARY KEY(idDefeito)
)ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE LOJA (
    idLoja      INT AUTO_INCREMENT  NOT NULL ,
    cep         INT                 NOT NULL,
    complemento VARCHAR(30)         NOT NULL,
    numero      INT                 NOT NULL,
    
    CONSTRAINT LOJA_PK PRIMARY KEY (idLoja)
)ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE MODELO (
    idModelo    INT AUTO_INCREMENT  NOT NULL,
    descModelo  VARCHAR(60)         NOT NULL,

    CONSTRAINT MODELO_UK UNIQUE KEY(descModelo),
    CONSTRAINT MODELO_PK PRIMARY KEY (idModelo)
)ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE MARCA (
    descMarca   VARCHAR(40)         NOT NULL,
    idMarca     INT AUTO_INCREMENT  NOT NULL,

    CONSTRAINT MARCA_UK UNIQUE KEY(descMarca),
    CONSTRAINT MARCA_PK PRIMARY KEY (idMarca)
)ENGINE = InnoDB AUTO_INCREMENT = 1;


CREATE TABLE CLIENTE (
    saldo           DECIMAL(8,2)    NOT NULL,
    nomeCompleto    VARCHAR(50)     NOT NULL,
    cpfCliente      BIGINT          NOT NULL,
    idCliente       INT             NOT NULL,

    CONSTRAINT PESSOA_CLIENTE_FK FOREIGN KEY(idCliente)
        REFERENCES PESSOA(idPessoa),
    CONSTRAINT CLIENTE_UK UNIQUE KEY(cpfCliente),
    CONSTRAINT CLIENTE_PK PRIMARY KEY (idCliente)
)ENGINE = InnoDB;

CREATE TABLE PRODUTO (
    descProduto     VARCHAR(100),
    ncm             INT             NOT NULL,
    cor             VARCHAR(15),
    codSerie        BIGINT,
    precoCompra     DECIMAL(8,2)    NOT NULL,
    condicao        ENUM('NOVO', 'USADO') NOT NULL,
    idProduto       INT             NOT NULL AUTO_INCREMENT,
    dtCadastro      DATE            NOT NULL,
    margemLucro     INT             NOT NULL,
    idLoja          INT             NOT NULL,

    CONSTRAINT LOJA_PRODUTO_FK FOREIGN KEY(idLoja)
        REFERENCES LOJA(idLoja),
    CONSTRAINT PRODUTO_PK PRIMARY KEY(idProduto),
    CONSTRAINT PRODUTO_UK UNIQUE KEY(codSerie)

)ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE CONSOLE (
    armazenamento   INT NOT NULL,
    idConsole       INT NOT NULL,
    idMarca         INT NOT NULL,
    idModelo        INT NOT NULL,

    CONSTRAINT MARCA_CONSOLE_FK FOREIGN KEY (idMarca)
        REFERENCES MARCA(idMarca),
    CONSTRAINT MODELO_CONSOLE_FK FOREIGN KEY (idModelo)
        REFERENCES MODELO(idModelo),
    CONSTRAINT PRODUTO_CONSOLE_FK FOREIGN KEY (idConsole)
        REFERENCES PRODUTO(idProduto),
    CONSTRAINT CONSOLE_PK PRIMARY KEY (idConsole)
)   ENGINE = InnoDB;

CREATE TABLE ACESSORIOCONSOLE (
    tipo                ENUM('FONTE','CONTROLE') NOT NULL,
    idAcessorioConsole  INT NOT NULL,
    idModelo            INT NOT NULL,
    idConsole           INT NOT NULL,

    CONSTRAINT MODELO_ACESSORIO_FK FOREIGN KEY(idModelo)
        REFERENCES MODELO(idModelo),
    CONSTRAINT CONSOLE_ACESSORIO_FK FOREIGN KEY (idConsole)
        REFERENCES CONSOLE(idConsole),
    CONSTRAINT PRODUTO_ACESSORIO_FK FOREIGN KEY (idAcessorioConsole)
        REFERENCES PRODUTO(idProduto),
    CONSTRAINT ACESSORIOCONSOLE_PK PRIMARY KEY(idConsole)
)ENGINE = InnoDB;

CREATE TABLE JOGO (
    online      BOOLEAN     NOT NULL,
    saga        VARCHAR(60) NOT NULL,
    multiplay   BOOLEAN     NOT NULL,
    titulo      VARCHAR(60) NOT NULL,
    singleplay  BOOLEAN     NOT NULL,
    idJogo      INT         NOT NULL,

    CONSTRAINT PRODUTO_JOGO_FK FOREIGN KEY (idJogo)
        REFERENCES PRODUTO(idProduto),
    CONSTRAINT JOGO_UK UNIQUE KEY(saga, titulo),
    CONSTRAINT JOGO_PK PRIMARY KEY(idJogo)
)ENGINE = InnoDB;

CREATE TABLE ACTIONFIGURE (
    fabricante      VARCHAR(60) NOT NULL,
    escala          VARCHAR(10) NOT NULL,
    idActionFigure  INT         NOT NULL,

    CONSTRAINT PRODUTO_ACTION_FK FOREIGN KEY (idActionFigure)
        REFERENCES PRODUTO(idProduto),
    CONSTRAINT ACTIONFIGURE_PK PRIMARY KEY (idActionFigure)
)ENGINE = InnoDB;

CREATE TABLE CHAVEIRO (
    material    VARCHAR(15)         NOT NULL,
    tamanho     ENUM('P','M','G')   NOT NULL,
    idChaveiro  INT                 NOT NULL,

    CONSTRAINT PRODUTO_CHAVEIRO_FK FOREIGN KEY (idChaveiro)
        REFERENCES PRODUTO(idProduto),
    CONSTRAINT CHAVEIRO_PK PRIMARY KEY (idChaveiro)
)ENGINE = InnoDB;

CREATE TABLE ITEM (
    descItem    VARCHAR(100)    NOT NULL,
    idCliente   INT             NOT NULL,
    codigoSerie VARCHAR(30)     NOT NULL,
    idMarca     INT             NOT NULL,
    idModelo    INT             NOT NULL,

    CONSTRAINT MARCA_ITEM_FK FOREIGN KEY (idMarca)
        REFERENCES MARCA(idMarca),
    CONSTRAINT MODELO_ITEM_FK FOREIGN KEY (idModelo)
        REFERENCES MODELO(idModelo),
    CONSTRAINT ITEM_PK PRIMARY KEY (codigoSerie)
)ENGINE = InnoDB;

CREATE TABLE MANUTENCAO (
    status               ENUM('APROVADO', 'CANCELADO', 'MANUTENCAO', 'FINALIZADO', 'ANALISE') DEFAULT 'ANALISE' NOT NULL,
    preco                DECIMAL(8,2),
    descCliente          VARCHAR(100)   NOT NULL,
    idManutencao         INT            NOT NULL AUTO_INCREMENT,
    dtSaida              INT,
    descTecnico          VARCHAR(100),
    dtEntrada            DATE           NOT NULL,
    idFuncionarioReparo  INT,
    codigoSerie          VARCHAR(30)    NOT NULL,
    idFuncionarioEntrada INT            NOT NULL,

    CONSTRAINT FUNCIONARIO_REPARO_FK FOREIGN KEY(idFuncionarioReparo)
        REFERENCES FUNCIONARIO(idFuncionario),
    CONSTRAINT FUNCIONARIO_ENTRADA_FK FOREIGN KEY(idFuncionarioEntrada)
        REFERENCES FUNCIONARIO(idFuncionario),

    CONSTRAINT ITEM_FK FOREIGN KEY(codigoSerie)
        REFERENCES ITEM(codigoSerie),

    CONSTRAINT MANUTENCAO_PK PRIMARY KEY(idManutencao)
)ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE TRANSACAO (
    dtPagamento     DATE                    NOT NULL,
    dividido        INT                     NOT NULL,
    valorPagamento  DECIMAL(8,2)            NOT NULL,
    formaPagamento  ENUM('DINHEIRO','CREDITO','DEBITO','TRANSFERENCIA','SALDO') NOT NULL,
    tipo            ENUM('COMPRA','VENDA')  NOT NULL,
    idTransacao     INT AUTO_INCREMENT      NOT NULL,
    desconto        DECIMAL(8,2)            NOT NULL,
    idFornecedor    INT,
    idCliente       INT,
    idFuncionario   INT                     NOT NULL,

    CONSTRAINT FORNECEDOR_TRANSACAO_FK FOREIGN KEY(idFornecedor)
        REFERENCES FORNECEDOR(idFornecedor),

    CONSTRAINT CLIENTE_TRANSACAO_FK FOREIGN KEY(idCliente)
        REFERENCES CLIENTE(idCliente),

    CONSTRAINT FUNCIONARIO_TRANSACAO_FK FOREIGN KEY(idFuncionario)
        REFERENCES FUNCIONARIO(idFuncionario),

    CONSTRAINT TRANSACAO_PK PRIMARY KEY(idTransacao),

    -- Uma transacao envolve no maximo 2 pessoas
    CONSTRAINT TRANSACAO_BOTH_NULL CHECK (
        (idCliente IS NULL     AND idFuncionario IS NOT NULL)  OR
        (idFuncionario IS NOT NULL AND idCliente IS NULL)
    )
)ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE email (
    idPessoa    INT             NOT NULL,
    email       VARCHAR(100)    NOT NULL,

    CONSTRAINT PESSOA_email_FK FOREIGN KEY(idPessoa)
        REFERENCES PESSOA(idPessoa),
    CONSTRAINT email_UK UNIQUE KEY(idPessoa, email)
)ENGINE = InnoDB;

CREATE TABLE telefone (
    idPessoa INT            NOT NULL,
    telefone VARCHAR(21)    NOT NULL,

    CONSTRAINT PESSOA_FK FOREIGN KEY(idPessoa)
        REFERENCES PESSOA(idPessoa),
    CONSTRAINT telefone_UK UNIQUE KEY(idPessoa, telefone)
)ENGINE = InnoDB;

CREATE TABLE tem (
    idFuncionario   INT NOT NULL,
    idCargo         INT NOT NULL,

    CONSTRAINT FUNCIONARIO_tem_FK FOREIGN KEY (idFuncionario)
        REFERENCES FUNCIONARIO(idFuncionario),
    
    CONSTRAINT CARGO_tem_FK FOREIGN KEY (idCargo)
        REFERENCES CARGO(idCargo),

    CONSTRAINT tem_UK UNIQUE KEY(idFuncionario, idCargo)
)ENGINE = InnoDB;

CREATE TABLE envolve (
    idProduto INT NOT NULL,
    idTransacao INT NOT NULL,

    CONSTRAINT PRODUTO_FK FOREIGN KEY (idProduto)
        REFERENCES PRODUTO(idProduto),
    
    CONSTRAINT TRANSACAO_FK FOREIGN KEY (idTransacao)
        REFERENCES TRANSACAO(idTransacao),

    CONSTRAINT envolve_UK UNIQUE KEY(idTransacao, idProduto)

)   ENGINE = InnoDB;

CREATE TABLE trata (
    idDefeito INT NOT NULL,
    idManutencao INT NOT NULL,

    CONSTRAINT DEFEITO_trata_FK FOREIGN KEY (idDefeito)
        REFERENCES DEFEITO(idDefeito),

    CONSTRAINT MANUTENCAO_trata_FK FOREIGN KEY (idManutencao)
        REFERENCES MANUTENCAO(idManutencao),

    CONSTRAINT trata_UK UNIQUE KEY(idDefeito, idManutencao)
)   ENGINE = InnoDB;
