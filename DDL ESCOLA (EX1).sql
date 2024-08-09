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

CREATE TABLE disciplina (
codigo       int(5)      not null,
nome         varchar(50) not null,
ementa       varchar(50) not null,
nraulas      int(2)      not null,
periodo	     varchar(50) not null,
codcurso     int(5)      not null,
codprofessor int(5)      not null,
primary key (codigo),
foreign key (codcurso) REFERENCES curso(codigo),
foreign key (codprofessor) REFERENCES professor(codigo));








