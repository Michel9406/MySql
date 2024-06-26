CREATE DATABASE db_empresa;

USE db_empresa;

CREATE TABLE tb_funcionarios(

id BIGINT AUTO_INCREMENT,
nome VARCHAR (50) NOT NULL,
cargo VARCHAR (50),
email VARCHAR (50),
aniversarioDeEmpresa DATE,
salario DECIMAL(6,2) NOT NULL ,
PRIMARY KEY (id)
);
INSERT INTO  tb_funcionarios(nome,cargo,email,aniversarioDeEmpresa,salario)
VALUES ("Sakura","administrativo","sukuraGmail.com","2020-02-15",1600.00);

INSERT INTO  tb_funcionarios(nome,cargo,email,aniversarioDeEmpresa,salario)
VALUES ("Naruto","almoxarifado","narutoGmail.com","2020-02-15",1840.00);

INSERT INTO  tb_funcionarios(nome,cargo,email,aniversarioDeEmpresa,salario)
VALUES ("Sasuke","marketing","sasukeGmail.com","2020-02-15",2600.00);

INSERT INTO  tb_funcionarios(nome,cargo,email,aniversarioDeEmpresa,salario)
VALUES ("Hinata","supervisora","hinataGmail.com","2020-02-15",3480.00);

INSERT INTO  tb_funcionarios(nome,cargo,email,aniversarioDeEmpresa,salario)
VALUES ("kakashi","lider","sukuraGmail.com","2020-02-15",4000.00);

SELECT * FROM tb_funcionarios WHERE salario > 2000.00;


SELECT * FROM tb_funcionarios WHERE salario < 2000.00;

select nome, aniversarioDeEmpresa FROM tb_funcionarios WHERE id = 5;