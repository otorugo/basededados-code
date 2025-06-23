
CREATE TABLE Usuario (
    nome VARCHAR(50),
    sobrenome VARCHAR(50),
    numero_de_telefone VARCHAR(15),
    data_nascimento DATE,
    rua VARCHAR(100),
    numero VARCHAR(10),
    bairro VARCHAR(50),
    cidade VARCHAR(50),
    estado VARCHAR(50),
    cep VARCHAR(15),
    sexo CHAR(1),
    email VARCHAR(100),
    senha VARCHAR(100),
    PRIMARY KEY (nome, sobrenome, numero_de_telefone)
);


CREATE TABLE Unidade (
    idUnidade INT PRIMARY KEY,
    cidade VARCHAR(50),
    estado VARCHAR(50),
    pais VARCHAR(50),
    predio_bloco VARCHAR(50)
);


CREATE TABLE Aluno (
    idUnidade INT,
    nome VARCHAR(50),
    sobrenome VARCHAR(50),
    numero_do_telefone VARCHAR(15),
    tipoAluno VARCHAR(30),
    PRIMARY KEY (nome, sobrenome, numero_do_telefone),
    FOREIGN KEY (nome, sobrenome, numero_do_telefone)
        REFERENCES Usuario(nome, sobrenome, numero_de_telefone),
    FOREIGN KEY (idUnidade) REFERENCES Unidade(idUnidade)
);


CREATE TABLE Professor (
    idUnidade INT,
    nome VARCHAR(50),
    sobrenome VARCHAR(50),
    numero_do_telefone VARCHAR(15),
    area_de_formacao VARCHAR(100),
    area_de_titulacao VARCHAR(100),
    PRIMARY KEY (nome, sobrenome, numero_do_telefone),
    FOREIGN KEY (nome, sobrenome, numero_do_telefone)
        REFERENCES Usuario(nome, sobrenome, numero_de_telefone),
    FOREIGN KEY (idUnidade) REFERENCES Unidade(idUnidade)
);



CREATE TABLE Departamento (
    chefe_departamento_nome VARCHAR(50),
    chefe_departamento_sobrenome VARCHAR(50),
    chefe_departamento_telefone VARCHAR(15),
    codigo VARCHAR(10) PRIMARY KEY,
    nome VARCHAR(100),
    FOREIGN KEY (chefe_departamento_nome, chefe_departamento_sobrenome, chefe_departamento_telefone) REFERENCES Professor(nome, sobrenome, numero_do_telefone)
);


CREATE TABLE Curso (
    idUnidade INT,
    codigo VARCHAR(10) PRIMARY KEY,
    nome VARCHAR(100),
    departamento VARCHAR(10),
    nivel_ensino VARCHAR(50),
    ementa TEXT,
    carga_horaria INT,
    vagas INT,
    FOREIGN KEY (departamento) REFERENCES Departamento(codigo),
    FOREIGN KEY (idUnidade) REFERENCES Unidade(idUnidade)
);


CREATE TABLE Disciplina (
    idUnidade INT,
    responsavel_nome VARCHAR(50),
    responsavel_sobrenome VARCHAR(50),
    responsavel_telefone VARCHAR(15),
    num_aulas INT,
    material_didatico TEXT,
    sala_padrao VARCHAR(50),
    PRIMARY KEY (num_aulas, material_didatico, sala_padrao),
    FOREIGN KEY (idUnidade) REFERENCES Unidade(idUnidade),
    FOREIGN KEY (responsavel_nome, responsavel_sobrenome, responsavel_telefone) REFERENCES Professor(nome, sobrenome, numero_do_telefone)
);


CREATE TABLE OfertaDisciplina (
    idOfertaDisciplina INT PRIMARY KEY,
    data_inicio DATE,
    data_fim DATE,
    capacidade INT,
    num_aulas INT,
    material_didatico TEXT,
    sala_padrao VARCHAR(50),
    FOREIGN KEY (num_aulas, material_didatico, sala_padrao)
        REFERENCES Disciplina(num_aulas, material_didatico, sala_padrao)
);

CREATE TABLE Matricula (
    idMatricula INT PRIMARY KEY,
    data_matricula DATE,
    notas TEXT,
    desconto DECIMAL(5,2),
    bolsa BOOLEAN,
    status VARCHAR(20),
    data_limite DATE,
    idOfertaDisciplina INT,
    nome VARCHAR(50),
    sobrenome VARCHAR(50),
    numero_de_telefone VARCHAR(15),
    FOREIGN KEY (idOfertaDisciplina) REFERENCES OfertaDisciplina(idOfertaDisciplina),
    FOREIGN KEY (nome, sobrenome, numero_de_telefone) REFERENCES Aluno(nome, sobrenome, numero_do_telefone)
);


CREATE TABLE Pagamento (
    valor DECIMAL(10,2),
    idMatricula INT,
    FOREIGN KEY (idMatricula) REFERENCES Matricula(idMatricula)
);


CREATE TABLE Mensagem (
    destinatario_nome VARCHAR(50),
    destinatario_sobrenome VARCHAR(50),
    destinatario_numero_de_telefone VARCHAR(15),
    remetente_nome VARCHAR(50),
    remetente_sobrenome VARCHAR(50),
    remetente_numero_de_telefone VARCHAR(15),
    timestamp TIMESTAMP,
    texto TEXT,
    FOREIGN KEY (destinatario_nome, destinatario_sobrenome, destinatario_numero_de_telefone)
        REFERENCES Usuario(nome, sobrenome, numero_de_telefone),
    FOREIGN KEY (remetente_nome, remetente_sobrenome, remetente_numero_de_telefone)
        REFERENCES Usuario(nome, sobrenome, numero_de_telefone)
);


CREATE TABLE Avaliacao (
    comentario TEXT,
    nota_didatica DECIMAL(3,2),
    nota_material DECIMAL(3,2),
    nota_infra DECIMAL(3,2),
    nome VARCHAR(50),
    sobrenome VARCHAR(50),
    numero_de_telefone VARCHAR(15),
    idOfertaDisciplina INT,
    FOREIGN KEY (nome, sobrenome, numero_de_telefone) REFERENCES Aluno(nome, sobrenome, numero_do_telefone),
    FOREIGN KEY (idOfertaDisciplina) REFERENCES OfertaDisciplina(idOfertaDisciplina)
);


CREATE TABLE Funcionario_Administrativo (
    nome VARCHAR(50),
    sobrenome VARCHAR(50),
    numero_do_telefone VARCHAR(15),
    cargo VARCHAR(50),
    PRIMARY KEY (nome, sobrenome, numero_do_telefone),
    FOREIGN KEY (nome, sobrenome, numero_do_telefone)
        REFERENCES Usuario(nome, sobrenome, numero_de_telefone)
);



