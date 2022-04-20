-- PASSO A PASSO PARA CRIAÇÃO DO BANCO DE DADOS + TABELAS + QUERYS


-- comando para criação do banco de dados 
CREATE DATABASE db_enderecos;

-- seleciona o banco de dados para que todas as alterações daqui pra frente reflitam somente nele
USE db_enderecos;

-- criação da primeira do banco de dados
CREATE TABLE tb_endereco(
	
    -- usamos o auto increment na chave primaria para que a responsabilidade da criação correta dos ids seja do sql
	id BIGINT auto_increment,
    cep varchar(255),
    nome_da_rua varchar(255),
    numero int,
    bairro varchar(255),
    cidade varchar(255),
    
    -- indicação da chave primaria 
    PRIMARY KEY (id)
);

-- seleciona todos os dados da tabela
SELECT * FROM tb_endereco;


-- inserção de dados na tabela, importante declarar exatamente na mesma ordem que as colunas que foram criadas
INSERT INTO tb_endereco(cep, nome_da_rua, numero, bairro, cidade)
VALUES("06907-540","Rua do limoeiro",71,"Jardim dos bobos","Morumbi");

INSERT INTO tb_endereco(cep, nome_da_rua, numero, bairro, cidade)
VALUES("77777-77","Rua Joao Gomes", 02 ,"Hoogwarts","Cidade de Deus");

INSERT INTO tb_endereco(cep, nome_da_rua, numero, bairro, cidade)
VALUES("40028-922","Rua do Pedreiro", 420 ,"Liberdade","Cidade da Liberdade");

-- Alteração tipo de dados de uma coluna na tabela
ALTER TABLE tb_endereco MODIFY numero BIGINT;

-- alteração de um dado na tabela 
UPDATE tb_endereco SET bairro = "Hogwarts" WHERE id = 4;

-- deleção de um dado na tabela
DELETE FROM tb_endereco WHERE id = 1;
