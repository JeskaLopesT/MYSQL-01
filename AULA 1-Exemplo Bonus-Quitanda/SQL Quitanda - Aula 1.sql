-- comando para criação de banco de dados
CREATE DATABASE db_blogpessoal;

-- comando que indica ao mysql workbench o banco de dados usado
USE db_quitanda;

-- comando para criação de tabelas
CREATE TABLE tb_produtos(

	-- criação da coluna de id, indicando que ela só vai aceitar dados do tipo bigint(numeros inteiros até 20 caracteres) passando a propriedade auto-increment, para que o mysql faça o gerenciamento dos ids
	id BIGINT AUTO_INCREMENT,
    
    -- criação da coluna de nome_produto
    nome_produto VARCHAR(255),
    
    -- criação da coluna preço, que aceitará dados numeros com até seis numeros no total, contendo dois numeros depois da virgula
    preco DECIMAL(6,2),

	-- indicação da chave primaria que será a coluna de id 
	PRIMARY KEY(id)
);

-- comando que trás todos os dados da tabela de produtos
SELECT * FROM tb_produtos;

-- inserção de dados na tabela de produtos
INSERT INTO tb_produtos(nome_produto, preco) 
VALUES ("Banana", 5.00),("Mexirica", 7.00);

-- desativa o modo seguro do mysql e permite update e delete
SET SQL_SAFE_UPDATES = 0;

-- atualização de um dado dentro da minha tabela
UPDATE tb_produtos SET preco = 7.90 WHERE id=2;








