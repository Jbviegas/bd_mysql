
CREATE TABLE tb_classes(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    atualmente VARCHAR(15) NOT NULL,
    descricao VARCHAR(25) NOT NULL
);

CREATE TABLE tb_personagens(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    posicao VARCHAR(50) NOT NULL,
    score DECIMAL(3,2) NOT NULL,
    clube_atual VARCHAR(100),
    classes_id BIGINT,
    FOREIGN KEY (classes_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes(atualmente, descricao) VALUES
("Aposentado", "Jogador Legend"),
("Ativo", "Jogador em atividade");

INSERT INTO tb_personagens(nome, posicao, score, clube_atual, classes_id) VALUES
("Ronaldo", "Centro_Avante", 9.50, NULL, 1),
("Mbappe", "Centro_Avante", 9.00, "Real Madrid", 2);

SELECT * FROM tb_classes;

SELECT 
    p.nome,
    p.posicao,
    p.score,
    p.clube_atual,
    c.atualmente AS status_jogador,
    c.descricao
FROM tb_personagens p
INNER JOIN tb_classes c 
ON p.classes_id = c.id
ORDER BY p.score DESC;