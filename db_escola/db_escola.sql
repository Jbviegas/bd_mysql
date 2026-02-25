CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE estudantes (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(150) NOT NULL,
    idade INT NOT NULL,
    serie VARCHAR(50) NOT NULL,
    nota DECIMAL(3,1) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO estudantes (nome, idade, serie, nota) VALUES
("Ana Clara", 14, "9º Ano", 8.5),
("Bruno Silva", 15, "1º Ano EM", 6.8),
("Carlos Henrique", 13, "8º Ano", 7.2),
("Daniela Souza", 16, "2º Ano EM", 9.0),
("Eduardo Lima", 14, "9º Ano", 5.9),
("Fernanda Alves", 15, "1º Ano EM", 7.5),
("Gabriel Martins", 13, "8º Ano", 6.5),
("Helena Costa", 16, "2º Ano EM", 8.8);

SELECT * FROM estudantes
WHERE nota > 7.0;

SELECT * FROM estudantes
WHERE nota < 7.0;

UPDATE estudantes
SET nota = 7.3
WHERE id = 5;