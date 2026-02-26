CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(100) NOT NULL,
    descricao VARCHAR(255) NOT NULL
);

CREATE TABLE tb_pizzas (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    tamanho VARCHAR(50) NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    ingredientes_principais VARCHAR(255) NOT NULL,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Salgada Tradicional', 'Pizzas tradicionais salgadas'),
('Salgada Especial', 'Pizzas salgadas com ingredientes especiais'),
('Doce', 'Pizzas com sabores doces'),
('Vegetariana', 'Pizzas sem carne'),
('Premium', 'Pizzas gourmet da casa');

INSERT INTO tb_pizzas (nome, tamanho, preco, ingredientes_principais, categoria_id) VALUES
('Margherita', 'Grande', 42.00, 'Mussarela, tomate e manjericão', 1),
('Calabresa', 'Grande', 48.00, 'Calabresa e cebola', 1),
('Frango com Catupiry', 'Grande', 55.00, 'Frango e catupiry', 2),
('Quatro Queijos', 'Média', 52.00, 'Mussarela, provolone, parmesão e gorgonzola', 2),
('Chocolate com Morango', 'Média', 60.00, 'Chocolate e morango', 3),
('Romeu e Julieta', 'Pequena', 50.00, 'Goiabada e queijo', 3),
('Vegetariana Especial', 'Grande', 47.00, 'Brócolis, milho e palmito', 4),
('Trufa Negra', 'Grande', 95.00, 'Trufa e queijo especial', 5);

SELECT * FROM tb_pizzas
WHERE preco > 45.00;

SELECT * FROM tb_pizzas
WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas
WHERE nome LIKE '%M%';

SELECT 
    tb_pizzas.nome,
    tb_pizzas.tamanho,
    tb_pizzas.preco,
    tb_categorias.nome_categoria
FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id;

SELECT 
    tb_pizzas.nome,
    tb_pizzas.tamanho,
    tb_pizzas.preco,
    tb_categorias.nome_categoria
FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_categorias.nome_categoria = 'Doce';
