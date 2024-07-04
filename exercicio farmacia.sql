CREATE DATABASE IF NOT EXISTS db_farmacia_bem_estar;


USE db_farmacia_bem_estar;


CREATE TABLE IF NOT EXISTS tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(100) NOT NULL,
    descricao VARCHAR(255)
);


INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
    ('Medicamentos', 'Produtos farmacêuticos para tratamentos diversos'),
    ('Higiene Pessoal', 'Produtos para cuidados pessoais e higiene'),
    ('Suplementos', 'Suplementos vitamínicos e minerais'),
    ('Cosméticos', 'Produtos cosméticos para beleza e cuidado com a pele'),
    ('Cuidados Infantis', 'Produtos específicos para bebês e crianças');


CREATE TABLE IF NOT EXISTS tb_produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(100) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    descricao VARCHAR(255),
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);


INSERT INTO tb_produtos (nome_produto, preco, descricao, id_categoria) VALUES
    ('Paracetamol 500mg', 12.90, 'Analgésico e antitérmico', 1),
    ('Shampoo Anticaspa', 19.99, 'Para controle da caspa', 2),
    ('Vitamina C 1000mg', 35.50, 'Suplemento vitamínico', 3),
    ('Creme Hidratante Facial', 45.00, 'Hidratação intensa para pele seca', 4),
    ('Sabonete Líquido Infantil', 8.75, 'Para higiene diária', 5),
    ('Protetor Solar FPS 50', 55.00, 'Proteção solar intensa', 4),
    ('Loção Corporal Nutritiva', 29.90, 'Nutrição para pele sensível', 4),
    ('Escova Dental Infantil', 5.25, 'Escovação divertida para crianças', 5);



SELECT * FROM tb_produtos WHERE preco > 50.00;


SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;


SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';



SELECT p.id_produto, p.nome_produto, p.preco, p.descricao 
AS descricao_produto, c.nome_categoria,  c.descricao AS descricao_categoria
FROM tb_produtos p INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria;