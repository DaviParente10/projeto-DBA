# PROCEDURES DE DELETE

# tb_ator
DELIMITER $$
CREATE PROCEDURE sp_delete_ator( Iid_ator INT(11))
	BEGIN
		DELETE FROM tb_ator WHERE id_Ator = Iid_ator;                        
	END $$
DELIMITER ;

# tb_cartao_credito
DELIMITER $$
CREATE PROCEDURE sp_delete_cartao_credito( Iid_Cartao INT(11))
	BEGIN
		DELETE FROM tb_cartao_credito WHERE id_Cartao = Iid_Cartao;                     
	END $$
DELIMITER ;

# tb_catalogo
DELIMITER $$
CREATE PROCEDURE sp_delete_catalogo( Iid_Catalogo VARCHAR(45))
	BEGIN
		DELETE FROM tb_catalogo WHERE id_Catalogo = Iid_Catalogo;                     
	END $$
DELIMITER ;

# tb_categoria
DELIMITER $$
CREATE PROCEDURE sp_delete_categoria( Iid_Categoria int(11))
	BEGIN
		DELETE FROM tb_categoria WHERE id_Categoria = Iid_Categoria;                     
	END $$
DELIMITER ;

#tb_classificacao_indicativa
DELIMITER $$
CREATE PROCEDURE sp_delete_classificacao_indicativa( Iid_Classificacao INT(11))
	BEGIN
		DELETE FROM tb_classificao_indicativa WHERE id_Classificacao = Iid_Classificacao;                     
	END $$
DELIMITER ;

#tb_cliente
DELIMITER $$
CREATE PROCEDURE sp_delete_cliente( Iid_Cliente INT(11))
	BEGIN
		DELETE FROM tb_cliente WHERE id_Cliente = Iid_Cliente;                     
	END $$
DELIMITER ;

#tb_episodio
DELIMITER $$
CREATE PROCEDURE sp_delete_episodio( Iid_episodio int(11))
	BEGIN
		DELETE FROM tb_episodio WHERE id_episodio = Iid_episodio;                     
	END $$
DELIMITER ;

#tb_filme
DELIMITER $$
CREATE PROCEDURE sp_delete_filme( Iid_Filme int(11))
	BEGIN
		DELETE FROM tb_filme WHERE id_Filme = Iid_Filme;                     
	END $$
DELIMITER ;

#tb_funcionario
DELIMITER $$
CREATE PROCEDURE sp_delete_funcionario( Iid_Funcionario int(11))
	BEGIN
		DELETE FROM tb_funcionario WHERE id_Funcionario = Iid_Funcionario;                     
	END $$
DELIMITER ;

#tb_idioma
DELIMITER $$
CREATE PROCEDURE sp_delete_idioma( Iid_Idioma int(11))
	BEGIN
		DELETE FROM tb_idioma WHERE id_Idioma = Iid_Idioma;                     
	END $$
DELIMITER ;

#tb_pagamento
DELIMITER $$
CREATE PROCEDURE sp_delete_pagamento( Iid_Pagamento int(11))
	BEGIN
		DELETE FROM tb_pagamento WHERE id_Pagamento = Iid_Pagamento;                     
	END $$
DELIMITER ;

#tb_pais
DELIMITER $$
CREATE PROCEDURE sp_delete_pais( Iid_Pais int(11))
	BEGIN
		DELETE FROM tb_pais WHERE id_Pais = Iid_Pais;                     
	END $$
DELIMITER ;

#tb_perfil
DELIMITER $$
CREATE PROCEDURE sp_delete_perfil( Iid_Perfil int(11))
	BEGIN
		DELETE FROM tb_perfil WHERE id_Perfil = Iid_Perfil;                     
	END $$
DELIMITER ;

#tb_plano
DELIMITER $$
CREATE PROCEDURE sp_delete_plano( Iid_Plano int(11))
	BEGIN
		DELETE FROM tb_plano WHERE id_Plano = Iid_Plano;                     
	END $$
DELIMITER ;

#tb_serie
DELIMITER $$
CREATE PROCEDURE sp_delete_serie( Iid_serie int(11))
	BEGIN
		DELETE FROM tb_idioma WHERE id_serie = Iid_serie;                     
	END $$
DELIMITER ;

#tb_temporada
DELIMITER $$
CREATE PROCEDURE sp_delete_temporada( Iid_temporada int(11))
	BEGIN
		DELETE FROM tb_temporada WHERE id_temporada = Iid_temporada;                     
	END $$
DELIMITER ;

#tb_tipo_pagamento
DELIMITER $$
CREATE PROCEDURE sp_delete_tipo_pagamento( Iid_TipoPagamento INT(11))
	BEGIN
		DELETE FROM tb_tipo_pagamento WHERE id_TipoPagamento = Iid_TipoPagamento;
	END $$
DELIMITER ;

#tb_usuario
DELIMITER $$
CREATE PROCEDURE sp_delete_usuario (Iid_usuario INT(11))
	BEGIN
		DELETE FROM tb_usuario WHERE id_usuario = Iid_usuario;
	END $$
DELIMITER ;

