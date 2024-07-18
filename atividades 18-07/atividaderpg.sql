-- RPG DB

CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    classe VARCHAR(255) NOT NULL
);

DROP TABLE tb_classes;

INSERT INTO tb_classes (classe) VALUES
("Guerreiro"),
("Tank"),
("Mago"),
("Anao"),
("Sacerdote");

CREATE TABLE tb_personagens (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    poder_ataque DECIMAL(6,2),
    poder_defesa DECIMAL(6,2),
    vida DECIMAL(6,2) NOT NULL,
    arma VARCHAR(255) NOT NULL,
    classeid INT,
    CONSTRAINT fk_personanges_classes FOREIGN KEY (classeid) REFERENCES tb_classes (id)
);

DROP TABLE tb_personagens;


-- Selecionando os dados das tabelas para verificar se está tudo correto
SELECT * FROM tb_classes;
SELECT * FROM tb_personagens;

INSERT INTO tb_personagens(nome,poder_ataque,poder_defesa,vida,arma,classeid) VALUES
('Stones', 7500, 6000, 3500, 'Espada', 1),
('Clark', 1950, 9000, 9500, 'Escudo', 2),
('Cinq', 9300.90, 3000.10, 1000, 'Livro', 3),
('Abner', 1830, 7200.40, 1200.12, 'Machado', 4),
('Tina', 1200, 9400.50, 5000.25, 'Cajado', 5),
('Finx', 8950, 6100.15, 5700.57, 'Escudo', 2),
('Patiner', 9400.94, 5100.05, 3500.35, 'Livro', 3),
('Sefira', 620, 9300.93, 7500.75, 'Elmo', 5),
('Eduardy', 5000, 7650.76, 8990.89, 'Espada', 1),
('Simon', 6500.65, 8990.89, 4300.43, 'Machado', 4),
('Aria', 7700, 8500.85, 6600.66, 'Livro', 3),
('Bjorn', 950, 8000.80, 7200.72, 'Martelo', 4),
('Celina', 6800.68, 7600.76, 5900.59, 'Espada', 1),
('Derek', 8200.82, 8400.84, 7000.70, 'Escudo', 2),
('Eldon', 1700, 9200.92, 4800.48, 'Cajado', 5),
('Fiora', 9100.91, 6300.63, 7800.78, 'Adaga', 1),
('Garek', 7800.78, 9900.99, 6800.68, 'Arco', 4),
('Helena', 8500.85, 7000.70, 7200.72, 'Elmo', 5),
('Ivor', 660, 8100.81, 5500.55, 'Machado', 4),
('Juno', 8900.89, 7400.74, 6300.63, 'Espada', 1);




SELECT nome,poder_ataque,poder_defesa,vida,arma,classe
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classeid = tb_classes.id;


SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_ataque < 2000;


















