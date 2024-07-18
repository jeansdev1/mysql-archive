CREATE DATABASE ecommerce_db;
USE ecommerce_db;

CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT,
    data_cadastro DATE,
    categoria VARCHAR(255),
    marca VARCHAR(255),
    valor_produto DECIMAL(10, 2),
    sku VARCHAR(100),
    estoque INT
);
-- modelo mais simples de criacao

INSERT INTO produtos (nome, descricao, data_cadastro, categoria, marca, valor_produto, sku, estoque) VALUES
('Camiseta Básica', 'Camiseta 100% algodão, várias cores', '2024-01-10', 'Roupas', 'Hering', 29.90, 'SKU001', 100),
('Notebook Gamer', 'Notebook com alto desempenho para jogos', '2024-01-12', 'Eletrônicos', 'Acer', 4999.99, 'SKU002', 50),
('Tênis Esportivo', 'Tênis confortável para atividades físicas', '2024-01-15', 'Calçados', 'Nike', 199.90, 'SKU003', 200),
('Smartphone', 'Smartphone com câmera de alta resolução', '2024-01-20', 'Eletrônicos', 'Apple', 2999.99, 'SKU004', 150),
('Mochila', 'Mochila resistente com compartimentos variados', '2024-01-25', 'Acessórios', 'Adidas', 149.90, 'SKU005', 300),
('Fone de Ouvido', 'Fone de ouvido com cancelamento de ruído', '2024-02-01', 'Eletrônicos', 'Apple', 499.90, 'SKU006', 80),
('Livro de Ficção', 'Livro de ficção científica best-seller', '2024-02-10', 'Livros', 'Harry Potter', 39.90, 'SKU007', 120),
('Relógio Digital', 'Relógio digital com múltiplas funções', '2024-02-15', 'Acessorios', 'Cassio', 99.90, 'SKU008', 300);

-- vizualizacao 
select * from produtos; 

-- produto > 500

select * from produtos where valor_produto > 500;


-- produto < 500

select * from produtos where valor_produto < 500;


-- atualizando marca Nike para Puma

-- desabilitando modo seguro pra junior rs

SET SQL_SAFE_UPDATES = 1;

update produtos set marca = "Xingling" where marca = 'Apple';



