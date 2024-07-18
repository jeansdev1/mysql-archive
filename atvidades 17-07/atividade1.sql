CREATE DATABASE rh_db;
USE rh_db;

CREATE TABLE employes (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    salario INT,
    cargo VARCHAR(255) NOT NULL,
    data_contra DATE,
    PRIMARY KEY (id)
);

INSERT INTO employes (nome, salario, cargo, data_contra) 
VALUES ("Rodrigo", 100000, "CEO", '1980-04-15');
INSERT INTO employes (nome, salario, cargo, data_contra) 
VALUES ("Clara", 70000, "CFO", '1988-12-23');
INSERT INTO employes (nome, salario, cargo, data_contra) 
VALUES ("Rafael", 10000, "Gerente", '2002-02-11');
INSERT INTO employes (nome, salario, cargo, data_contra) 
VALUES ("Carlos", 4380, "Supervisor", '2000-03-03');
INSERT INTO employes (nome, salario, cargo, data_contra) 
VALUES ("Suzana", 1690, "Atendente 1", '1997-12-23');
INSERT INTO employes (nome, salario, cargo, data_contra) 
VALUES ("Cicero", 2200, "Atendente 2", '1997-12-23');
INSERT INTO employes (salario, cargo, data_contra)
VALUES (2500, "Limpeza", "1999-02-25");



-- vizualizando table

select * from employes;

-- salario > 2000

SELECT * FROM employes where salario > 2000;

-- salario < 2000

select * from employes where salario < 2000;

-- alterando salario do CEO para 95000

update employes set salario = 95000 where id = 6;

-- alterando o nome do ID 1

update employes set nome = "Cicera" where id = 1;

-- alterando o cargo de suzana

update employes set cargo = "Auxiliar Operacional" where id = 2;















