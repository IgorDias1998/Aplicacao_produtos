CREATE DATABASE AplicacaoProdutosJAVA;

USE AplicacaoProdutosJAVA;

CREATE TABLE Categoria(
	cat_id INT PRIMARY KEY AUTO_INCREMENT,
    cat_titulo VARCHAR(100) NOT NULL,
    cat_descricao VARCHAR(255));
    
CREATE TABLE Produto(
    pro_id INT PRIMARY KEY AUTO_INCREMENT,
    pro_categoria INT,
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
    pro_cod INT,
    FOREIGN KEY (pro_categoria) REFERENCES Categoria(cat_id)
);

CREATE TABLE Venda (
    ven_id INT PRIMARY KEY AUTO_INCREMENT,
    ven_produto INT,
    FOREIGN KEY (ven_produto) REFERENCES Produto(pro_id)
);

CREATE TABLE Itens (
    item_id INT PRIMARY KEY AUTO_INCREMENT,
    item_quantidade INT,
    item_valorunitario DECIMAL(10, 2),
    item_valortotal DECIMAL(10, 2),
    ven_id INT,
    pro_id INT,
    FOREIGN KEY (ven_id) REFERENCES Venda(ven_id),
    FOREIGN KEY (pro_id) REFERENCES Produto(pro_id)
);
