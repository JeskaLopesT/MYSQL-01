-- comando para criação de banco de dados
CREATE DATABASE db_rh;

-- comando para criação de banco de dados
CREATE TABLE tb_colaboradores(

-- criação da coluna de id, indicando que ela só vai aceitar dados do tipo bigint(numeros inteiros até 20 caracteres) passando a propriedade auto-increment, para que o mysql faça o gerenciamento dos ids
	id BIGINT AUTO_INCREMENT,
    
    -- criação da coluna de nome que vai aceitar até 255 caracteres no total
    nome VARCHAR(255),
    
    -- criação da coluna de idade, que vai aceitar até dois caracteres no total
    idade INT(2),
    
    -- criação da coluna de salario, que aceitará até seis numeros TOTAL, com dois após a virgula
    salario DECIMAL(8,2),
    
    -- criação da coluna de cargo
    cargo VARCHAR(255),

	-- indicação da chave primaria que será a coluna de id 
	PRIMARY KEY(id)
);

-- comando de inserção de dados dentro da tabela de colaboradores **CUIDADO** O comando insert não bloqueia o envio de dados repetidos, rode ele apenas uma vez, confira se ele inseriu, e então insira os outros dados em seguida
INSERT INTO tb_colaboradores(nome,idade,salario,cargo) 
VALUES("Lucas",25, 400.99,"Desenvolvedor");

-- comando que trás todos os dados da tabela de colaboradores
SELECT * FROM tb_colaboradores;

-- comando que trás todos os colaboradores que tiverem o salario maior que dois mil
SELECT * FROM tb_colaboradores WHERE salario > 2000;

-- comando que trás todos os colaboradores que tiverem o salario menor que dois mil
SELECT * FROM tb_colaboradores WHERE salario < 2000;

-- BONUS -  Comando que altera uma coluna da tabela
ALTER TABLE tb_colaboradores
MODIFY COLUMN salario DECIMAL(10,2);

-- Comando que atualiza um dado da tabela tb_colaboradores de acordo com o id indicado
UPDATE tb_colaboradores
SET salario = 5001.99
WHERE id=2;


