CREATE DATABASE escola;
use escola;

CREATE TABLE alunos(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT,
    sala_aula VARCHAR(10),
    notas DECIMAL(4,2),
    genero CHAR,
    quantidade_faltas INT,
    bolsista BOOLEAN DEFAULT FALSE
);

INSERT INTO alunos(nome, idade, sala_aula, notas, genero, quantidade_faltas, bolsista) VALUES
("Joao", 12, "1A", 8, 'M', 1, true),
("Clara", 13, "1A", 9, 'F', 0, false),
("Miguel", 12, "1A", 10, 'M', 0, false),
("Jean", 12, "2A", 8, 'M', 0, true),
("Cleber", 13, "2A", 10, 'M', 5, false),
("Isabela", 12, "2A", 10, 'F', 3, true),
("Maria", 14, "3A", 5, 'F', 4, false),
("Samara", 11, "3A", 6, 'F', 0, true);

-- vizualizacao 

SELECT * FROM alunos;

-- ver notas maior que 7 

SET SQL_SAFE_UPDATES = 0;


SELECT * FROM alunos where notas > 7;

-- ver notas menor que 7 e alem disso faltas maior que 2

SELECT * FROM alunos where notas < 7 and quantidade_faltas > 2;


-- atualizzando registro samara

UPDATE alunos SET quantidade_faltas = 7 where nome = 'Samara';  





