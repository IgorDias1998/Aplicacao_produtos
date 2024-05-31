CREATE DATABASE AplicacaoProdutosJAVA;

USE AplicacaoProdutosJAVA;
    
CREATE TABLE Produto(
    pro_id INT PRIMARY KEY AUTO_INCREMENT,
    pro_imagem VARCHAR(255),
    pro_datacadastro DATE,
    pro_fator FLOAT,
    pro_ncm VARCHAR(20),
    pro_valorvenda DECIMAL(10, 2) NOT NULL,
    pro_custo DECIMAL(10, 2) NOT NULL,
    pro_estoque_maximo INT,
    pro_estoque_minimo INT,
    pro_estoque INT NOT NULL,
    pro_descricao VARCHAR(255),
    pro_nome VARCHAR(100) NOT NULL,
    pro_status VARCHAR(30),
    pro_cod INT
);
