CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_classe VARCHAR(255) NOT NULL,
    cla VARCHAR(255)
);

INSERT INTO tb_classe (nome_classe, cla) 
VALUES 
    ("ninja da folha", "uzumaki"),
    ("ninja da folha", "uchiha"),
    ("ninja da folha", "ryuga"),
    ("ninja da folha", "nara");

CREATE TABLE tb_personagens (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    jutsu VARCHAR(255) NOT NULL,
    ataque INT NOT NULL,
    defesa INT NOT NULL,
    id_classe BIGINT,
    FOREIGN KEY (id_classe) REFERENCES tb_classe(id)
);

INSERT INTO tb_personagens (nome, jutsu, ataque, defesa, id_classe)
VALUES 
    ("naruto", "clone das sombras", 1500, 5000, 1),
    ("sasuke", "sharingan", 5000, 1000, 2),
    ("ryuga", "byakugan", 6500, 2000, 3),
    ("shikamaru", "sombra", 1200, 900, 4);

SELECT * FROM tb_classe;

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT  nome, jutsu, ataque, defesa, tb_classe.nome_classe, tb_classe.cla FROM
tb_personagens INNER JOIN tb_classe
ON tb_personagens.id_classe = tb_classe.id;


