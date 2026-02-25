CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE colaboradores (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(100) NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    data_admissao DATE NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO colaboradores (nome, cargo, salario, data_admissao) VALUES
("Ana Souza", "Analista de RH", 2500.00, "2022-03-15"),
("Carlos Lima", "Assistente Administrativo", 1800.00, "2023-01-10"),
("Mariana Costa", "Gerente de Projetos", 5000.00, "2021-07-20"),
("João Pedro", "Estagiário", 1200.00, "2024-02-01"),
("Fernanda Alves", "Coordenadora", 3200.00, "2020-11-05");

SELECT * FROM colaboradores
WHERE salario > 2000;

SELECT * FROM colaboradores
WHERE salario < 2000;

UPDATE colaboradores
SET salario = 2200.00
WHERE id = 2;