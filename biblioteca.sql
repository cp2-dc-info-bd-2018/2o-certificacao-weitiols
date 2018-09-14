USE biblioteca;

CREATE TABLE leitor(
cadastro_leitor INT,
nome VARCHAR(50),
endereco VARCHAR(50),
telefone VARCHAR(20),
PRIMARY KEY (cadastro_leitor)
);

CREATE TABLE livro(
cod_livro INT,
titulo VARCHAR(50),
ano_publicacao INT,
tipo_obra VARCHAR(20),
PRIMARY KEY (cod_livro)
);

CREATE TABLE reserva(
cod_reserva INT,
cadastro_leitor INT,
cod_livro INT,
data_reserva DATE,
PRIMARY KEY(cod_reserva),
FOREIGN KEY (cod_livro) REFERENCES livro(cod_livro),
FOREIGN KEY (cadastro_leitor) REFERENCES leitor(cadastro_leitor)
);

ALTER TABLE reserva
ALTER COLUMN cadastro_leitor INT NOT 
NULL;

CREATE TABLE reserva_livro(
cod_livro INT,
cod_reserva INT,
PRIMARY KEY (cod_livro, cod_reserva),
FOREIGN KEY (cod_livro) REFERENCES livro(cod_livro),
FOREIGN KEY (cod_reserva) REFERENCES reserva(cod_reserva)
);

CREATE TABLE funcionario(
cod_funcionario INT,
nome VARCHAR(50),
funcao VARCHAR (20),
PRIMARY KEY (cod_funcionario)
);

CREATE TABLE exemplar(
cod_livro INT,
cod_exemplar INT,
PRIMARY KEY (cod_exemplar),
FOREIGN KEY (cod_livro) REFERENCES livro (cod_livro)
);

CREATE TABLE escritor(
cod_escritor INT,
nome VARCHAR(50),
PRIMARY KEY (cod_escritor)
);

CREATE TABLE livro_escritor(
cod_livro INT,
cod_escritor INT,
PRIMARY KEY (cod_livro, cod_escritor),
FOREIGN KEY (cod_livro) REFERENCES livro(cod_livro),
FOREIGN KEY (cod_escritor) REFERENCES escritor(cod_escritor)
);

CREATE TABLE emprestimo(
cod_emprestimo INT,
cod_exemplar INT,
cadastro_leitor INT,
data_emprestimo DATE,
data_retorno DATE,
cod_funcionario INT,
PRIMARY KEY (cod_emprestimo),
FOREIGN KEY (cod_exemplar) REFERENCES exemplar(cod_exemplar),
FOREIGN KEY (cadastro_leitor) REFERENCES leitor(cadastro_leitor),
FOREIGN KEY (cod_funcionario) REFERENCES funcionario(cod_funcionario)
);


CREATE TABLE devolucao(
cod_emprestimo INT,
data_devolucao DATE,
cod_funcionario INT,
cod_devolucao INT,
PRIMARY KEY (cod_devolucao),
FOREIGN KEY (cod_emprestimo) REFERENCES emprestimo(cod_emprestimo)
);

CREATE TABLE revisao(
cod_exemplar INT,
cod_funcionario INT,
PRIMARY KEY (cod_exemplar, cod_funcionario)
);

ALTER TABLE emprestimo
ALTER COLUMN cadastro_leitor INT NOT 
NULL;

ALTER TABLE exemplar
ALTER COLUMN cod_livro INT NOT 
NULL;

ALTER TABLE livro_escritor
ALTER COLUMN cod_livro INT NOT 
NULL;

ALTER TABLE reserva_livro
ALTER COLUMN cod_livro INT NOT 
NULL;

ALTER TABLE livro_escritor
ALTER COLUMN cod_escritor INT NOT 
NULL;

ALTER TABLE devolucao
ALTER COLUMN cod_emprestimo INT NOT 
NULL;

ALTER TABLE emprestimo
ALTER COLUMN cod_funcionario INT NOT 
NULL;

ALTER TABLE devolucao
ALTER COLUMN cod_funcionario INT NOT 
NULL;

ALTER TABLE revisao
ALTER COLUMN cod_funcionario INT NOT 
NULL;

ALTER TABLE revisao
ALTER COLUMN cod_exemplar INT NOT 
NULL;



