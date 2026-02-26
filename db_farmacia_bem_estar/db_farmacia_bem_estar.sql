CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(100) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    setor VARCHAR(100) NOT NULL
);

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    marca VARCHAR(100) NOT NULL,
    preco DECIMAL(8,2) NOT NULL,
    quantidade_estoque INT NOT NULL,
    data_validade DATE,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome_categoria, descricao, setor) VALUES
('Medicamentos', 'Remédios e tratamentos em geral', 'Saúde'),
('Cosméticos', 'Produtos de beleza e higiene', 'Beleza'),
('Vitaminas', 'Suplementos vitamínicos', 'Suplementação'),
('Infantil', 'Produtos para bebês e crianças', 'Infantil'),
('Higiene Pessoal', 'Produtos de higiene diária', 'Higiene');

INSERT INTO tb_produtos (nome, marca, preco, quantidade_estoque, data_validade, categoria_id) VALUES
('Paracetamol 750mg', 'Medley', 12.50, 100, '2027-05-10', 1),
('Dipirona 1g', 'Neo Química', 8.90, 150, '2026-12-01', 1),
('Creme Hidratante Corporal', 'Nivea', 55.00, 60, '2028-03-15', 2),
('Colágeno em Cápsulas', 'Vitalis', 65.00, 40, '2027-09-20', 3),
('Vitamina C 1g', 'Cimed', 25.00, 120, '2026-11-30', 3),
('Shampoo Infantil', 'Johnson', 22.00, 80, '2028-01-01', 4),
('Condicionador Capilar', 'Elseve', 58.00, 70, '2027-07-18', 2),
('Sabonete Líquido Corporal', 'Dove', 15.00, 90, '2028-06-12', 5);

SELECT * FROM tb_produtos
WHERE preco > 50.00;

SELECT * FROM tb_produtos
WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos
WHERE nome LIKE '%C%';

SELECT 
    tb_produtos.nome,
    tb_produtos.marca,
    tb_produtos.preco,
    tb_categorias.nome_categoria
FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

SELECT 
    tb_produtos.nome,
    tb_produtos.marca,
    tb_produtos.preco,
    tb_categorias.nome_categoria
FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.nome_categoria = 'Cosméticos';

