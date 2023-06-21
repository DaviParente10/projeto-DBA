CREATE DATABASE IF NOT EXISTS db_stream
COLLATE utf8mb4_general_ci
CHARSET utf8mb4;

use db_stream;

-- Criação das tabelas

CREATE TABLE IF NOT EXISTS tb_idioma (
  id_Idioma INT(11) NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  PRIMARY KEY (id_Idioma))AUTO_INCREMENT = 1;
  
CREATE TABLE IF NOT EXISTS tb_classificacao_indicativa(
  id_Classificacao INT(11) NOT NULL AUTO_INCREMENT,
  idade ENUM("L", "10", "12", "16", "18") NOT NULL,
  descricao VARCHAR(255) NOT NULL,
  PRIMARY KEY (id_Classificacao))AUTO_INCREMENT = 1;
  
  CREATE TABLE IF NOT EXISTS tb_pais(
  id_Pais INT(11) NOT NULL AUTO_INCREMENT,
  nome VARCHAR(100) NULL,
  codigo CHAR(2) NULL,
  PRIMARY KEY (id_Pais),
  CONSTRAINT uq_codigo UNIQUE(codigo))AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS tb_categoria (
  id_categoria INT(11) NOT NULL AUTO_INCREMENT,
  nome_categoria VARCHAR(45) NULL,
  PRIMARY KEY (id_categoria))AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS tb_ator(
  id_Ator INT(11) NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45) NULL,
  sobrenome VARCHAR(45) NULL,
  PRIMARY KEY (id_Ator))AUTO_INCREMENT = 1;
  
  CREATE TABLE IF NOT EXISTS tb_catalogo(
  id_Catalogo VARCHAR(45),
  imagem_capa VARCHAR(255) NULL,
  titulo VARCHAR(45) NULL,
  sinopse VARCHAR(255) NULL,
  ano_lancamento DATE NULL,
  id_Pais INT(11) NOT NULL,
  id_Classificacao INT(11) NOT NULL,
  id_Idioma INT(11) NOT NULL,
  PRIMARY KEY (id_Catalogo),
  CONSTRAINT fk_tb_catalogo_tb_pais FOREIGN KEY (id_Pais) REFERENCES tb_pais (id_Pais),
  CONSTRAINT fk_tb_catalogo_tb_classificacao_indicativa FOREIGN KEY (id_Classificacao) REFERENCES tb_classificacao_indicativa (id_Classificacao),
  CONSTRAINT fk_tb_catalogo_tb_idioma FOREIGN KEY (id_Idioma) REFERENCES tb_idioma(id_Idioma))AUTO_INCREMENT = 1;
  
CREATE TABLE IF NOT EXISTS tb_catalogo_has_tb_categoria(
  id_Catalogo VARCHAR(45) NOT NULL,
  id_categoria INT(11) NOT NULL,
  PRIMARY KEY (id_Catalogo, id_categoria),
  CONSTRAINT fk_tb_catalogo_has_tb_categoria_tb_catalogo FOREIGN KEY (id_Catalogo) REFERENCES tb_catalogo (id_Catalogo),
  CONSTRAINT fk_tb_catalogo_has_tb_categoria_tb_categoria FOREIGN KEY (id_categoria) REFERENCES tb_categoria (id_categoria)
);

CREATE TABLE IF NOT EXISTS tb_ator_has_tb_catalogo(
  id_Ator INT NOT NULL,
  id_Catalogo VARCHAR(45) NOT NULL,
  PRIMARY KEY (id_Ator, id_Catalogo),
  CONSTRAINT fk_tb_autor_has_tb_catalogo_tb_autor FOREIGN KEY (id_Ator) REFERENCES tb_ator (id_Ator),
  CONSTRAINT fk_tb_autor_has_tb_catalogo_tb_catalogo FOREIGN KEY (id_Catalogo) REFERENCES tb_catalogo (id_Catalogo)
);

CREATE TABLE IF NOT EXISTS tb_catalogo_has_tb_idioma(
  id_Catalogo VARCHAR(45) NOT NULL,
  id_Idioma INT NOT NULL,
  PRIMARY KEY (id_Catalogo, id_Idioma),
  CONSTRAINT fk_tb_catalogo_has_tb_idioma_tb_catalogo FOREIGN KEY (id_Catalogo) REFERENCES tb_catalogo (id_Catalogo),
  CONSTRAINT fk_tb_catalogo_has_tb_idioma_tb_idioma1 FOREIGN KEY (id_Idioma) REFERENCES tb_idioma (id_Idioma));

CREATE TABLE IF NOT EXISTS tb_temporada (
  id_temporada INT(11) NOT NULL,
  titulo VARCHAR(45) NULL,
  descricao VARCHAR(255) NULL,
  qtd_episodio INT NULL,
  PRIMARY KEY (id_temporada));

CREATE TABLE IF NOT EXISTS tb_filme(
  id_Filme INT(11) NOT NULL,
  oscar TINYINT NULL,
  id_Catalogo VARCHAR(45) NOT NULL,
  PRIMARY KEY (id_Filme),
  CONSTRAINT fk_tb_filme_tb_catalogo1 FOREIGN KEY (id_Catalogo) REFERENCES tb_catalogo (id_Catalogo));
  
CREATE TABLE IF NOT EXISTS tb_serie(
  id_serie INT(11) NOT NULL,
  id_Catalogo VARCHAR(45) NOT NULL,
  PRIMARY KEY (id_serie),
  CONSTRAINT fk_tb_serie_tb_catalogo FOREIGN KEY (id_Catalogo) REFERENCES tb_catalogo (id_Catalogo));

CREATE TABLE IF NOT EXISTS tb_episodio (
  id_episodio INT(11) NOT NULL,
  numero INT(11) NULL,
  id_temporada INT(11) NOT NULL,
  id_Catalogo VARCHAR(45) NOT NULL,
  PRIMARY KEY (id_episodio),
  CONSTRAINT fk_tb_episodio_tb_temporada FOREIGN KEY (id_temporada) REFERENCES tb_temporada (id_temporada),
  CONSTRAINT fk_tb_episodio_tb_catalogo FOREIGN KEY (id_Catalogo) REFERENCES tb_catalogo (id_Catalogo));

CREATE TABLE IF NOT EXISTS tb_usuario (
  id_usuario INT(11) NOT NULL,
  primeiro_nome VARCHAR(45) NULL,
  sobrenome VARCHAR(45) NULL,
  email VARCHAR(45) NULL,
  data_nasc DATE NULL,
  data_cadastro DATE NULL,
  senha VARCHAR(10) NULL,
  id_Pais INT NOT NULL,
  PRIMARY KEY (id_usuario),
  CONSTRAINT fk_tb_usuario_tb_pais FOREIGN KEY (id_Pais) REFERENCES tb_pais (id_Pais));

CREATE TABLE IF NOT EXISTS tb_funcionario (
  id_Funcionario INT(11) NOT NULL,
  imagem VARCHAR(255) NULL,
  id_usuario INT(11) NOT NULL,
  PRIMARY KEY (id_Funcionario),
  CONSTRAINT fk_tb_funcionario_tb_usuario FOREIGN KEY (id_usuario) REFERENCES tb_usuario (id_usuario));
  
  CREATE TABLE IF NOT EXISTS tb_cartao_credito(
  id_Cartao INT(11) NOT NULL,
  numero VARCHAR(20) NULL,
  data_vencimento DATE NULL,
  CVV CHAR(3) NULL,
  titular VARCHAR(255) NULL,
  PRIMARY KEY (id_Cartao));
  
  CREATE TABLE IF NOT EXISTS tb_cliente(
  id_Clliente INT(11) NOT NULL,
  nome_cliente VARCHAR(45) NULL,
  id_usuario INT(11) NOT NULL,
  id_Cartao INT(11) NULL,
  PRIMARY KEY (id_Clliente),
  CONSTRAINT fk_tb_cliente_tb_usuario FOREIGN KEY (id_usuario) REFERENCES tb_usuario (id_usuario),
  CONSTRAINT fk_tb_cliente_tb_cartao_credito FOREIGN KEY (id_Cartao) REFERENCES tb_cartao_credito (id_Cartao));

CREATE TABLE IF NOT EXISTS tb_tipo_pagamento (
  id_TipoPagamento INT(11) NOT NULL,
  nome VARCHAR(45) NULL,
  PRIMARY KEY (id_TipoPagamento));

CREATE TABLE IF NOT EXISTS tb_pagamento (
  id_Pagamento INT(11) NOT NULL,
  valor FLOAT(2,2) NULL,
  data_pagamento TIMESTAMP NULL,
  id_Cartao INT(11) NULL,
  id_TipoPagamento INT(11) NOT NULL,
  id_Clliente INT(11) NOT NULL,
  PRIMARY KEY (id_Pagamento),
  CONSTRAINT fk_tb_pagamento_tb_cartao_credito1 FOREIGN KEY (id_Cartao) REFERENCES tb_cartao_credito (id_Cartao),
  CONSTRAINT fk_tb_pagamento_tb_tipo_pagamento1 FOREIGN KEY (id_TipoPagamento) REFERENCES tb_tipo_pagamento (id_TipoPagamento),
  CONSTRAINT fk_tb_pagamento_tb_cliente1 FOREIGN KEY (id_Clliente) REFERENCES tb_cliente (id_Clliente));

CREATE TABLE IF NOT EXISTS tb_plano(
  id_Plano INT(11) NOT NULL,
  valor FLOAT(2,2) NULL,
  descricao VARCHAR(255) NULL,
  dt_vencimento DATE NULL,
  PRIMARY KEY (id_Plano));
  
  CREATE TABLE IF NOT EXISTS tb_perfil(
  id_Perfil INT(11) NOT NULL,
  foto VARCHAR(255) NULL,
  nome VARCHAR(255) NULL,
  tipo ENUM('I', 'G', 'C') NULL,
  id_Clliente INT(11) NOT NULL,
  tb_plano_id_Plano INT(11) NULL,
  PRIMARY KEY (id_Perfil),
  CONSTRAINT fk_tb_perfil_tb_cliente1 FOREIGN KEY (id_Clliente) REFERENCES tb_cliente (id_Clliente),
  CONSTRAINT fk_tb_perfil_tb_plano1  FOREIGN KEY (tb_plano_id_Plano) REFERENCES tb_plano (id_Plano));
