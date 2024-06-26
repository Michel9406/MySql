CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
	marca VARCHAR(255) NOT NULL,
   	quantidade INT,
    tamanho VARCHAR (5),
	preco DECIMAL(6,2) NOT NULL,
    tipo VARCHAR(255),
    PRIMARY KEY (id)
);
ALTER TABLE tb_produtos ADD tipo VARCHAR(255);
ALTER TABLE tb_produtos change preco preco DECIMAL (6,2) NOT NULL;

INSERT INTO tb_produtos(marca,quantidade, tamanho, preco,tipo) 
VALUES ("nike",10, "P-M-G", 180.00, "camisa");

INSERT INTO tb_produtos(marca,quantidade, tamanho, preco,tipo) 
VALUES ("adidas",10, "P-M-G", 180.00, "boné");

INSERT INTO tb_produtos(marca,quantidade, tamanho, preco,tipo) 
VALUES ("puma",10, "P-M-G", 180.00, "short");

INSERT INTO tb_produtos(marca,quantidade, tamanho, preco,tipo) 
VALUES ("asisc",10, "P-M-G", 300.00, "blusa");

INSERT INTO tb_produtos(marca,quantidade, tamanho, preco,tipo) 
VALUES ("ayudarme",10, "P-M-G", 380.00, "conjunto");

INSERT INTO tb_produtos(marca,quantidade, tamanho, preco,tipo) 
VALUES ("bull",10, "P-M-G", 280.00, "calça jeans");

INSERT INTO tb_produtos(marca,quantidade, tamanho, preco,tipo) 
VALUES ("nike",10, "P-M-G", 680.00, "conjunto");

INSERT INTO tb_produtos(marca,quantidade, tamanho, preco,tipo) 
VALUES ("Puma",10, "P-M-G", 170.00, "camisaNJR");

SELECT * FROM tb_produtos;

UPDATE tb_produtos SET preco = 200.00 WHERE id = 9 ;

SELECT * FROM tb_produtos WHERE preco > 500.00;
SELECT * FROM tb_produtos WHERE preco < 500.00;