-- PIZZARIA DB
CREATE DATABASE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id INT AUTO_INCREMENT PRIMARY KEY,
    categoria VARCHAR(255)NOT NULL
    );

-- select * from tb_categorias;

-- DROP TABLE tb_categorias;

INSERT INTO tb_categorias (categoria) VALUES
("Pizza Salgada"),
("Pizza Doce"),
("Fogazza"),
("Refrigerante"),
("Suco");

CREATE TABLE tb_pizza(
	id BIGINT auto_increment primary key,
    pedido VARCHAR(255),
    valor decimal (6,2) NOT NULL,
    tamanho VARCHAR(50),
    quantidade_ml int,
    entrega BOOLEAN,
    categoriaid INT,
	CONSTRAINT fk_tb_oizza_categorias FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id)
);
DROP TABLE tb_pizza;

-- Selecionando os dados das tabelas para verificar se está tudo correto
SELECT * FROM tb_pizza;
SELECT * FROM tb_categorias;

INSERT INTO tb_pizza (pedido, valor, tamanho, quantidade_ml, entrega, categoriaid) VALUES
('Calabresa', 30.00, 'broto', NULL, TRUE, 1),
('Peperoni', 45.00, 'grande', NULL, TRUE, 1),
('Mussarela', 35.50, 'broto', NULL, FALSE, 1),
('Nutella', 50.00, 'grande', NULL, TRUE, 2),
('Moda do Chefe', 60.75, 'grande', NULL, TRUE, 1),
('Frango com Catupiry', 40.20, 'broto', NULL, FALSE, 1),
('Italiana', 55.80, 'grande', NULL, TRUE, 1),
('Bauru', 32.60, 'broto', NULL, FALSE, 1),
('Coca Cola', 7.50, NULL, 350, TRUE, 4),
('Guarana', 6.50, NULL, 350, FALSE, 4),
('Coca Cola', 8.00, NULL, 600, TRUE, 4),
('Misto', 30, NULL, 600, FALSE, 3),
('Laranja', 10.00, NULL, 500, TRUE, 5),
('Abacaxi com Hortelã', 12.00, NULL, 500, FALSE, 5),
('Laranja', 9.50, NULL, 300, TRUE, 5),
('Abacaxi com Hortelã', 11.50, NULL, 300, FALSE, 5),
('Misto', 30, 'grande', NULL, TRUE, 3),
('Prestigio', 42.00, 'broto', NULL, FALSE, 2),
('Mussarela', 30.00, 'broto', NULL, TRUE, 1),
('Chocolate', 70.00, 'grande', NULL, TRUE, 2);

-- Pizza + 45 

SELECT * FROM tb_pizza WHERE valor > 45;

-- between 

SELECT * FROM tb_pizza WHERE valor BETWEEN 50 and 100;

-- Like

SELECT * FROM tb_pizza WHERE pedido LIKE "M%";

-- Inner join

SELECT tb_pizza.pedido, tb_pizza.valor, tb_pizza.tamanho, tb_pizza.quantidade_ml, tb_pizza.entrega, tb_categorias.categoria
FROM tb_pizza
INNER JOIN tb_categorias 
ON tb_pizza.categoriaid = tb_categorias.id;

-- inner join where

SELECT tb_pizza.pedido, tb_pizza.valor, tb_pizza.tamanho, tb_pizza.quantidade_ml, tb_pizza.entrega, tb_categorias.categoria
FROM tb_pizza
INNER JOIN tb_categorias 
ON tb_pizza.categoriaid = tb_categorias.id
WHERE tb_categorias.categoria = 'Pizza Salgada';



















    