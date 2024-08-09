--COMANDOS DDL
CREATE DATABASE school;

CREATE TABLE estado(
    codigo int(5) not null,
    nome varchar(50) not null,
    primary key (codigo)
);

CREATE TABLE  cidade(
    codigo int(5) not null,
    nome varchar(50) not null,
    codestado int(5) not null,
    primary key (codigo),
    foreign key (codestado) REFERENCES estado(codigo)
);

CREATE TABLE aluno(
    codigo      int(5)      not null,
    nome        varchar(50) not null,
    endereco    varchar(50) not null,
    bairro      varchar(50) not null,
    codcidade   int(5)      not null,
    telefone    int(10)     not null,
    nomepai     varchar(50) not null,
    nomemae     varchar(50) not null,
    fonepai     int(10)     not null, 
    fonemae     int(10)     not null,
    rg          int(12)     not null,
    cpf         int(12)     not null,
    email       varchar(50) not null,
    datanasc    date        not null,
    codcurso    int(5)      not null,
    primary key (codigo),
    foreign key (codcurso) REFERENCES curso(codigo),
    foreign key (codcidade) REFERENCES cidade(codigo)
);

CREATE TABLE curso(
    codigo int(5) not null,
    nome varchar(50) not null,
    primary key(codigo)
);

CREATE TABLE professor(
    codigo      int(5)      not null,
    nome        varchar(50) not null,
    endereco    varchar(50) not null,
    bairro      varchar(50) not null,
    codcidade   int(5)      not null,
    telefone    int(10)     not null,
    rg          int(12)     not null,
    cpf         int(12)     not null,
    email       varchar(50) not null,
    datanasc    date        not null,
    codcurso    int(5)      not null,
    primary key (codigo),
    foreign key (codcurso) REFERENCES curso(codigo),
    foreign key (codcidade) REFERENCES cidade(codigo)
);

CREATE TABLE disciplina(
    codigo       int(5)      not null,
    nome         varchar(50) not null,
    ementa       varchar(50) not null,
    nraulas      int(2)      not null,
    periodo	     varchar(50) not null,
    codcurso     int(5)      not null,
    codprofessor int(5)      not null,
    primary key (codigo),
    foreign key (codcurso) REFERENCES curso(codigo),
    foreign key (codprofessor) REFERENCES professor(codigo)
);

---------------------------------------------------------------------
--COMANDOS DML
-- INSERINDO ELEMENTOS DENTRO DE UMA TABELA
INSERT INTO estado(codigo,nome) VALUES(1, 'SANTA CATARINA');

INSERT INTO estado(codigo,nome) VALUES(2, 'PARANÁ');

INSERT INTO estado(codigo,nome) VALUES(3, 'RIO GRANDE DO SUL');

-------------------------------
--obs: o codestado ali é aquele declarado, que pega de referencia a PK da table estado (codigo)
--entao quando boto 1, ele vai na tabela estado, na pk CODIGO e pega o valor que há dentro
--e os valores relacionados a esse (tipo o nome, que no caso do codestado 1, é SANTA CATARINA)
INSERT INTO cidade(codigo,nome,codestado) VALUES(1, 'CRICIÚMA', 1);

INSERT INTO cidade(codigo,nome,codestado) VALUES(2, 'CURITIBA', 2);

INSERT INTO cidade(codigo,nome,codestado) VALUES(3, 'PORTO ALEGRE', 3);

-------------------------------

INSERT INTO curso(codigo,nome) VALUES(1, 'INFORMÁTICA');

INSERT INTO curso(codigo,nome) VALUES(2, 'MECÂNICA');

INSERT INTO curso(codigo,nome) VALUES(3, 'DESIGN');

-------------------------------

INSERT INTO aluno(codigo,nome,endereco,bairro,codcidade,telefone,nomepai,nomemae,
fonepai,fonemae,rg,cpf,email,datanasc,codcurso) VALUES (1,"Arthur Fernandes","Rua Rosita Finster","Jardim Angelica",1,12345,"Luciano","Cris",
12345,345678,22334455,55667788,"arthur@gmail.com","11/09/2005",2)

INSERT INTO aluno(codigo,nome,endereco,bairro,codcidade,telefone,nomepai,nomemae,
fonepai,fonemae,rg,cpf,email,datanasc,codcurso) VALUES (2, "Maria Silva", "Avenida Central", "Centro", 2, 67890, "Roberto", "Ana",
67890, 987654, 33445566, 99887766, "maria.silva@gmail.com", "23/11/1982", 3)

INSERT INTO aluno(codigo,nome,endereco,bairro,codcidade,telefone,nomepai,nomemae,
fonepai,fonemae,rg,cpf,email,datanasc,codcurso) VALUES (3, "João Pereira", "Rua das Flores", "Vila Nova", 3, 54321, "Carlos", "Mariana",
54321, 876543, 11223344, 66778899, "joao.pereira@gmail.com", "15/05/1990", 1)

--------------------------------



