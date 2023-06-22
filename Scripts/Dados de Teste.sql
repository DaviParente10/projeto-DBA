Aqui estão alguns dados para teste, aplicado em diferentes tabelas do Banco de Dados. Nesse caso, a inserção foi manual. Embora que, posteriormente, criei Procedures
capazes de realizar as operações DML(Insert, Update e Delete)!

INSERT INTO tb_idioma (nome) VALUES ('Inglês');
INSERT INTO tb_idioma (nome) VALUES ('Espanhol');
INSERT INTO tb_idioma (nome) VALUES ('Francês');
INSERT INTO tb_idioma (nome) VALUES ('Alemão');
INSERT INTO tb_idioma (nome) VALUES ('Italiano');

INSERT INTO tb_classificacao_indicativa (idade, descricao) VALUES ('L', 'Livre para todos os públicos');
INSERT INTO tb_classificacao_indicativa (idade, descricao) VALUES ('10', 'Recomendado para maiores de 10 anos');
INSERT INTO tb_classificacao_indicativa (idade, descricao) VALUES ('12', 'Recomendado para maiores de 12 anos');
INSERT INTO tb_classificacao_indicativa (idade, descricao) VALUES ('16', 'Recomendado para maiores de 16 anos');
INSERT INTO tb_classificacao_indicativa (idade, descricao) VALUES ('18', 'Recomendado para maiores de 18 anos');

INSERT INTO tb_pais (nome, codigo) VALUES ('Brasil', 'BR');
INSERT INTO tb_pais (nome, codigo) VALUES ('Estados Unidos', 'US');
INSERT INTO tb_pais (nome, codigo) VALUES ('Canadá', 'CA');
INSERT INTO tb_pais (nome, codigo) VALUES ('Reino Unido', 'UK');
INSERT INTO tb_pais (nome, codigo) VALUES ('França', 'FR');

INSERT INTO tb_categoria (nome_categoria) VALUES ('Ação');
INSERT INTO tb_categoria (nome_categoria) VALUES ('Aventura');
INSERT INTO tb_categoria (nome_categoria) VALUES ('Comédia');
INSERT INTO tb_categoria (nome_categoria) VALUES ('Drama');
INSERT INTO tb_categoria (nome_categoria) VALUES ('Ficção Científica');

INSERT INTO tb_ator (nome, sobrenome) VALUES ('Tom', 'Hanks');
INSERT INTO tb_ator (nome, sobrenome) VALUES ('Scarlett', 'Johansson');
INSERT INTO tb_ator (nome, sobrenome) VALUES ('Leonardo', 'DiCaprio');
INSERT INTO tb_ator (nome, sobrenome) VALUES ('Meryl', 'Streep');
INSERT INTO tb_ator (nome, sobrenome) VALUES ('Brad', 'Pitt');

INSERT INTO tb_catalogo (id_Catalogo, imagem_capa, titulo, sinopse, ano_lancamento, id_Pais, id_Classificacao, id_Idioma)
VALUES ('1', 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSBpoI6n7XA2qtOch9OJceK6jnkiiivSmCy6ciEGF4W8137SSY5', 'O Poderoso Chefão', 'Uma história emocionante', '2022-01-01', 1, 3, 2);

INSERT INTO tb_catalogo (id_Catalogo, imagem_capa, titulo, sinopse, ano_lancamento, id_Pais, id_Classificacao, id_Idioma)
VALUES ('2', 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTtA1iGMcbPnBcetlwE9X9DAyUy_7dm3-FT1B5MpqC2jiHilFfD', 'O Padrinho Parte II', 'Uma comédia hilariante', '2023-05-15', 2, 2, 1);

INSERT INTO tb_catalogo (id_Catalogo, imagem_capa, titulo, sinopse, ano_lancamento, id_Pais, id_Classificacao, id_Idioma)
VALUES ('3', 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQppDu0hqXBVeag6VQ4LMw53MDFzBUPhoZzTHEEK7hPeYEfsTHf', 'Cidadão Kane', 'Um suspense eletrizante', '2021-11-30', 3, 4, 3);

INSERT INTO tb_catalogo (id_Catalogo, imagem_capa, titulo, sinopse, ano_lancamento, id_Pais, id_Classificacao, id_Idioma)
VALUES ('4', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgdnAx4RcqdeSRes2ziir-xst2CwO0G99WDZHHTe1a3bQzlsxw', 'O Pulp Fiction', 'Um drama comovente', '2020-07-10', 1, 5, 4);

INSERT INTO tb_catalogo (id_Catalogo, imagem_capa, titulo, sinopse, ano_lancamento, id_Pais, id_Classificacao, id_Idioma)
VALUES ('5', 'https://upload.wikimedia.org/wikipedia/pt/thumb/0/0d/EsdlaIII.jpg/250px-EsdlaIII.jpg', 'O Senhor dos Anéis: O Retorno do Rei', 'Uma aventura épica', '2023-02-28', 2, 3, 5);

INSERT INTO tb_catalogo_has_tb_categoria (id_Catalogo, id_categoria) VALUES ('1', 1);
INSERT INTO tb_catalogo_has_tb_categoria (id_Catalogo, id_categoria) VALUES ('1', 4);
INSERT INTO tb_catalogo_has_tb_categoria (id_Catalogo, id_categoria) VALUES ('2', 3);
INSERT INTO tb_catalogo_has_tb_categoria (id_Catalogo, id_categoria) VALUES ('2', 2);
INSERT INTO tb_catalogo_has_tb_categoria (id_Catalogo, id_categoria) VALUES ('4', 1);

INSERT INTO tb_ator_has_tb_catalogo (id_Ator, id_Catalogo) VALUES (1, '1');
INSERT INTO tb_ator_has_tb_catalogo (id_Ator, id_Catalogo) VALUES (2, '1');
INSERT INTO tb_ator_has_tb_catalogo (id_Ator, id_Catalogo) VALUES (3, '2');
INSERT INTO tb_ator_has_tb_catalogo (id_Ator, id_Catalogo) VALUES (4, '4');
INSERT INTO tb_ator_has_tb_catalogo (id_Ator, id_Catalogo) VALUES (5, '4');

INSERT INTO tb_catalogo_has_tb_idioma (id_Catalogo, id_Idioma) VALUES ('1', 1);
INSERT INTO tb_catalogo_has_tb_idioma (id_Catalogo, id_Idioma) VALUES ('2', 1);
INSERT INTO tb_catalogo_has_tb_idioma (id_Catalogo, id_Idioma) VALUES ('3', 1);
INSERT INTO tb_catalogo_has_tb_idioma (id_Catalogo, id_Idioma) VALUES ('4', 1);
INSERT INTO tb_catalogo_has_tb_idioma (id_Catalogo, id_Idioma) VALUES ('5', 1);

INSERT INTO tb_filme (id_Filme, oscar, id_Catalogo) VALUES (1, 3, '1');
INSERT INTO tb_filme (id_Filme, oscar, id_Catalogo) VALUES (2, 6, '2');
INSERT INTO tb_filme (id_Filme, oscar, id_Catalogo) VALUES (3, 1, '3');
INSERT INTO tb_filme (id_Filme, oscar, id_Catalogo) VALUES (4, 1, '4');
INSERT INTO tb_filme (id_Filme, oscar, id_Catalogo) VALUES (5, 1, '5');

-- Para tb_Serie
INSERT INTO tb_catalogo (id_Catalogo, imagem_capa, titulo, sinopse, ano_lancamento, id_Pais, id_Classificacao, id_Idioma)
VALUES (6, 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRcr0khV9t7IeOcVDRvC84eCW_5yidk-aWcf466252yFKNPAf5M', 'Breaking Bad', 'Uma história emocionante','2008-01-20', 2, 5, 1);
(7, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHpiX6QwgIOQkRv1NBQZL7x9b7t6QZiMiV83v4o-TIxBeA91CB', 'The Walking Dead', 'Uma história emocionante', '2010-10-31', 2, 5, 1),
(8, 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRQLcB2spLEP_nC3A9cCjS9U_CtMfhGX3Hpx8rcp5g6L_prih08', 'Prison Break', 'Uma história emocionante', '2005-05-29', 2, 5, 1),
(9, 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQk0VSk3jAME4afTmJU6mJk_ObzOtMO7rnyjLZGplPCpkMI5yhw', 'How I Met Your Mother', 'Uma história emocionante', '2005-09-19', 2, 4, 1),
(10, 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRiNsZ90JifevpSLJkTM3F5oNVGlVv83lJJGwWAQgiV9oahJfE8', 'The Big Bang Theory', 'Uma história emocionante', '2007-09-24', 2, 4, 1);

INSERT INTO tb_serie (id_serie,id_Catalogo) VALUES(1,6),(2,7),(3,8),(4,9),(5,10);

INSERT INTO tb_temporada (id_temporada, titulo, qtd_episodio) VALUES (1, 'Temporada 1', 7),(2,'Temporada 2', 20),(3,'Temporada 3', 33);
