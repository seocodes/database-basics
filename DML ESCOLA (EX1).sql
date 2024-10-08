---------------------------------------------------------------------
--COMANDOS DML
-- INSERINDO ELEMENTOS DENTRO DE UMA TABELA
INSERT INTO estado(codigo,nome) VALUES(1, 'SANTA CATARINA');

INSERT INTO estado(codigo,nome) VALUES(2, 'PARANÁ');

INSERT INTO estado(codigo,nome) VALUES(3, 'RIO GRANDE DO SUL');

-------------------------------
--obs: o codestado ali é aquele declarado como FK, que pega de referencia a PK codigo da table estado
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
12345,345678,22334455,55667788,"arthur@gmail.com","2005/12/20",2);

INSERT INTO aluno(codigo,nome,endereco,bairro,codcidade,telefone,nomepai,nomemae,
fonepai,fonemae,rg,cpf,email,datanasc,codcurso) VALUES (2, "Maria Silva", "Avenida Central", "Centro", 2, 67890, "Roberto", "Ana",
67890, 987654, 33445566, 99887766, "maria.silva@gmail.com", "1982/05/04", 3);

INSERT INTO aluno(codigo,nome,endereco,bairro,codcidade,telefone,nomepai,nomemae,
fonepai,fonemae,rg,cpf,email,datanasc,codcurso) VALUES (3, "João Pereira", "Rua das Flores", "Vila Nova", 3, 54321, "Carlos", "Mariana",
54321, 876543, 11223344, 66778899, "joao.pereira@gmail.com", "1990/05/15", 1);

-------------------------------

INSERT INTO professor(codigo,nome,endereco,bairro,codcidade,telefone,
rg,cpf,email,datanasc,codcurso) 
VALUES (1,"Cris Pavei","Rua Rosita Finster","Jardim Angelica",1,12345,
22334455,55667788,"cris@gmail.com","1930/07/20",1);

INSERT INTO professor(codigo,nome,endereco,bairro,codcidade,telefone,
rg,cpf,email,datanasc,codcurso) 
VALUES (2,"Maria Silva","Rua dos Pinheiros","Centro",1,67890,
33445566,77889900,"maria@gmail.com","1980/04/03",2);

INSERT INTO professor(codigo,nome,endereco,bairro,c odcidade,telefone,
rg,cpf,email,datanasc,codcurso) 
VALUES (3,"João Oliveira","Rua das Flores","Jardim das Flores",1,34567,
44556677,99988776,"joao@gmail.com","1977/03/28",3);

-------------------------------

INSERT INTO disciplina(codigo,nome,ementa,nraulas,periodo,codcurso,codprofessor) 
values (1,"Banco Dados","Modelagem,criacao e programação do BD",3,"Vespertino",1,1);

INSERT INTO disciplina(codigo, nome, ementa, nraulas, periodo, codcurso, codprofessor) 
VALUES (2, "Algoritmos e Estruturas de Dados", "Análise e implementação de algoritmos e estruturas de dados",
4, "Matutino", 2, 2);

INSERT INTO disciplina(codigo, nome, ementa, nraulas, periodo, codcurso, codprofessor)
VALUES (3, "Programação Orientada a Objetos", "Introdução à programação orientada a objetos com Java", 
5, "Noturno", 3, 3);


