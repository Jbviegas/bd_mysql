CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE produtos (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(150) NOT NULL,
    categoria VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO produtos (nome, categoria, preco, estoque) VALUES
("Notebook Dell Inspiron", "Informática", 3500.00, 10),
("Smartphone Samsung Galaxy", "Celulares", 2200.00, 25),
("Mouse Gamer RGB", "Acessórios", 150.00, 50),
("Teclado Mecânico", "Acessórios", 480.00, 30),
("Monitor 27 Polegadas", "Informática", 1200.00, 15),
("Fone Bluetooth JBL", "Áudio", 350.00, 40),
("Smart TV 50 Polegadas", "Eletrônicos", 2800.00, 8),
("Cadeira Gamer", "Móveis", 900.00, 12);

SELECT * FROM produtos
WHERE preco > 500;

SELECT * FROM produtos
WHERE preco < 500;

UPDATE produtos
SET preco = 180.00
WHERE id = 3;

