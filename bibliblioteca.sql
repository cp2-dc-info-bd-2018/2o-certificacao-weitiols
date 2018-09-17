USE biblioteca;

INSERT INTO leitor (cadastro_leitor, nome, endereco, telefone) VALUES
(2020457, 'Gomes de Albuquerque', 'Rua Lopes Bonfim', '021-986435992'),
(2020778, 'Laura Garcia', 'Rua Doutor Sabino Machado', '021-97648898'),
(2020448, 'Ana Luíza Carvalho', 'RJ- Rua Lorenzo Lopes de Albuquerque- Casa24', '021-984476767'),
(2020992, 'Júlio Antônio Pascoal', 'RJ- Rua Clara de Almeida- Prédio Princesa Isabel- Apart 37', '021-31348241'),
(2020321, 'Alessia Sivan', 'RJ- Rua Wild Francisco-Casa17', '021-993268163');

INSERT INTO livro (cod_livro, titulo, ano_publicacao, tipodeobra) VALUES
(115, 'Orgulho e Preconceito', 1930, 'Romance'),
(774, 'Felicidade Clandestina', 1980, 'Contos'),
(324, 'O Pequeno Príncipe', 1943, 'Infantil'),
(445, 'O Hobbit', 1950, 'Fantasia'),
(568, 'Assassinato no Expresso Oriente', 1940, 'Romance');


INSERT INTO reserva (cod_reserva, cadastro_leitor, data_reserva)
(85847, 2020457, '2018-09-13'),
(85489, 2020778, '2018-09-13'),
(85234, 2020448, '2018-08-29'),
(85341, 2020992, '2018-09-03'),
(85987, 2020321, '2018-07-30');




INSERT INTO escritor (cod_escritor, nome_escritor)
(171, 'Jane Austen'),
(177, 'Clarice Lispector'),
(112, 'Antoine de Saint-Exupéry'),
(143, ' J. R. R. Tolkien'),
(123, 'Agatha Christie');

INSERT INTO livro_escritor (cod_livro, cod_escritor)
(115, 171),
(774, 177),
(324, 112),
(445, 143),
(568, 123);

INSERT INTO reserva_livro (cod_reserva, cod_livro)
(85847, 115),
(85489, 774),
(85234, 324),
(85341, 445),
(85987, 568);

INSERT INTO funcionario (cod_funcionario, nome, funcao)
(1, 'Almir Albenito', 'Organizar prateleiras'),
(2, 'Josenilda Gonçalves', 'Administrar reservas'),
(3, 'Ana Clara Gomes' , 'Responsável pela revisão'),
(4, 'George Bento Francisco', 'Administrar empréstimos'),
(5, 'Julia Lima', 'Administrar empréstimos');

INSERT INTO exemplar (cod_livro, cod_exemplar)
(115, 168),
(774, 525),
(324, 888),
(445, 268),
(568, 865);



INSERT INTO revisao (cod_exemplar, cod_funcionario)
(168, 1),
(525, 2),
(888, 3),
(268, 3),
(856,3);



INSERT INTO emprestimos (cod_emprestimos, cod_exemplar, cadastro_leitor, data_emprestimos, data_retorno, cod_funcionario)
(1, 168, 2020457, '2018-09-13', '2018-09-23', 2),
(2, 525, 2020778, '2018-09-13', '2018-09-23', 2),
(3, 888, 2020448, '2018-09-09', '2018-09-29', 4),
(4, 268, 2020992, '2018-09-05', '2018-09-25', 5),
(5, 856, 2020321, '2018-08-15', '2018-09-05', 5);



INSERT INTO devolucao (cod_emprestimo, data_devolucao, cod_funcionario, cod_devolucao)
(1, '2018-09-23', 4, 1),
(2, '2018-09-23', 4, 2),
(3, '2018-09-02', 5, 3),
(4, '2018-09-25', 5, 4),
(5, '2018-09-10', 5, 5);