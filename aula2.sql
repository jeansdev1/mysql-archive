-- Create Database

create database db_quitanda;
use db_quitanda;

create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
quantidade int,
validate date,
preco decimal not null,
primary key(id)
);


INSERT INTO tb_produtos(nome, quantidade, validate, preco) 
values ("tomate",100, "2023-12-15", 8.00);
INSERT INTO tb_produtos(nome, quantidade, validate, preco) 
values ("maçã",20, "2023-12-15", 5.00);
INSERT INTO tb_produtos(nome, quantidade, validate, preco) 
values ("laranja",50, "2023-12-15", 10.00);
INSERT INTO tb_produtos(nome, quantidade, validate, preco) 
values ("banana",200, "2023-12-15", 12.00);
INSERT INTO tb_produtos(nome, quantidade, validate, preco) 
values ("uva",1200, "2023-12-15", 30.00);
INSERT INTO tb_produtos(nome, quantidade, validate, preco) 
values ("pêra",500, "2023-12-15", 2.99);

-- drop table tb_produtos;


select * from tb_produtos;


select nome, preco from tb_produtos;


select * from tb_produtos where id = 2; 


select * from tb_produtos where id in (2,4);


-- selecionando dados com operacoes logicas 
select * from tb_produtos where preco > 5 and quantidade < 100;

-- ---------------------------------------------------------------

describe tb_produtos;

alter table tb_produtos add descricao varchar(255);

alter table tb_produtos drop descricao;

-- ---------------------------------------------
SET SQL_SAFE_UPDATES =1;


-- atualizando sem where 

update tb_produtos set preco = 2.99;

-- atualizando com where 

update tb_produtos set preco = 2.99 where id = 1;


-- ------------------------ delete

select * from tb_produtos;

delete from tb_produtos where id = 1;


-- ----------------------------------

alter table tb_produtos modify preco decimal(6,2);


INSERT INTO tb_produtos(nome, quantidade, validate, preco) 
values ("teste",100, "2023-12-15", 8000.00);






