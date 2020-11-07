/* aula4exer5Evolucao4_Logico_DurvalCarvalho-160005191: */

CREATE TABLE PACIENTE (
    nomeCompleto 	VARCHAR 			NOT NULL,
    dtNasc 		DATE 				NOT NULL,
    sexo 		VARCHAR 			NOT NULL,
    cep 		INT,
    bairro 		VARCHAR,
    rua 		VARCHAR,
    numero 		INT,
    complemento 	VARCHAR,
    cidade 		VARCHAR,
    estado 		VARCHAR,
    idPaciente 		INT		PRIMARY KEY	NOL NULL

    PRIMARY KEY (idPaciente)
);

CREATE TABLE MEDICO (
    crmMedico 		INT NOT NULL 	NOT NULL,
    nomeCompleto 	VARCHAR 	NOT NULL,
    crmEstado 		VARCHAR 	NOT NULL,
    
    PRIMARY KEY (crmMedico, crmEstado)
);

CREATE TABLE MEDICAMENTO (
    principioAtivo 	VARCHAR 	NOT NULL,
    tarja 		VARCHAR 	NOT NULL,
    idMedicamento 	INT		NOT NULL	PRIMARY KEY

    PRIMARY KEY (idMedicamento)
);

CREATE TABLE RECEITA (
    posologia 		VARCHAR 	NOT NULL,
    dtEmissaoReceita 	DATE		NOT NULL 	PRIMARY KEY,
    dtHorarioConsulta 	DATE 		NOT NULL,
    crmMedico 		INT 		NOT NULL,
    crmEstado 		INT 		NOT NULL,
    idPaciente 		INT 		NOT NULL

    FOREIGN KEY (dtHorarioConsulta, crmMedico, crmEstado, idPaciente)
    PRIMARY KEY (dtEmissaoReceita)
);

CREATE TABLE ESPECIALIDADE (
    idEspecialidade 	INT		NOT NULL	PRIMARY KEY,
    nome 		VARCHAR		NOT NULL

    PRIMARY KEY (idEspecialidade)
);

CREATE TABLE CONSULTA_atende (
    dtHorarioConsulta 	DATE		NOT NULL 	PRIMARY KEY,
    crmMedico 		INT 		NOT NULL,
    crmEstado 		VARCHAR 	NOT NULL,
    idPaciente 		INT 		NOT NULL

    PRIMARY KEY (dtHorarioConsulta)
    FOREIGN KEY (crmMedico, crmEstado, idPaciente)
);

CREATE TABLE telefone (
    idPaciente 	INT 	NOT NULL PRIMARY KEY,
    ddi 	INT,	NOT NULL
    ddd 	INT,	NOT NULL
    numero 	INT	NOT NULL

    FOREIGN KEY (idPaciente)
    PRIMARY KEY (ddi, ddd, numero)
);

CREATE TABLE possui (
    crmMedico INT,
    crmEstado VARCHAR,
    idEspecialidade INT

    FOREIGN KEY (crmMedico, crmEstado, idEspecialidade)
);

CREATE TABLE tem (
    dtEmissaoReceita DATE,
    idMedicamento INT,
    crmMedico INT,
    crmEstado INT,
    idPaciente INT

    FOREIGN KEY (crmMedico, crmEstado, idPaciente, idMedicamento)
);