CREATE DATABASE db_sacolao;

USE db_sacolao;

-- Cria a tabela tb_categorias
CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
descricao VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

-- Cria a Tabela tb_produtos
CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
quantidade INT, 
dtvalidade DATE NULL,
preco DECIMAL(6, 2),

-- campo que vai receber a chave estrangeira que virá da tabela de categorias
categoria_id BIGINT, 
PRIMARY KEY (id),

-- aqui eu crio de fato o relacionamento entre tabelas, indicando o campo que vai receber a chave estrangeira(categoria_id), e de onde a chave estrangeira virá, da tabela de categorias, da coluna de id (tb_categorias.id)
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);


