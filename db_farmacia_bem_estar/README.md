# 📘 Guia Completo sobre INNER JOIN, LEFT JOIN e RIGHT JOIN

## 1️⃣ Primeiro INNER JOIN (sem filtro)

### Exemplo utilizado:

``` sql
SELECT 
    tb_produtos.nome,
    tb_produtos.marca,
    tb_produtos.preco,
    tb_categorias.nome_categoria
FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;
```

### 📖 Como se lê essa consulta:

"Selecione o nome, marca e preço do produto e o nome da categoria, da
tabela produtos, juntando com a tabela categorias, onde o categoria_id
do produto seja igual ao id da categoria."

### 🧠 O que acontece aqui:

-   A consulta começa pela tabela **tb_produtos**

-   O `INNER JOIN` junta com **tb_categorias**

-   A junção acontece quando:

        tb_produtos.categoria_id = tb_categorias.id

📌 Resultado:\
Serão exibidos apenas os produtos que possuem uma categoria válida
cadastrada.

------------------------------------------------------------------------

## 2️⃣ Diferença entre INNER JOIN, LEFT JOIN e RIGHT JOIN

### 🔹 INNER JOIN

Retorna **apenas os registros que possuem correspondência nas duas
tabelas**.

📌 Se não houver correspondência, o registro NÃO aparece.

Visualmente:

Produtos ∩ Categorias\
(Somente a interseção)

------------------------------------------------------------------------

### 🔹 LEFT JOIN

Retorna **todos os registros da tabela da esquerda**, mesmo que não haja
correspondência na tabela da direita.

Exemplo:

``` sql
SELECT *
FROM tb_produtos
LEFT JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;
```

📌 Resultado: - Todos os produtos aparecem. - Se não tiver categoria
correspondente, os campos da categoria ficam NULL.

Visualmente:

Produtos (completo) + correspondências das Categorias

------------------------------------------------------------------------

### 🔹 RIGHT JOIN

Retorna **todos os registros da tabela da direita**, mesmo que não haja
correspondência na tabela da esquerda.

Exemplo:

``` sql
SELECT *
FROM tb_produtos
RIGHT JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;
```

📌 Resultado: - Todas as categorias aparecem. - Se não houver produto
associado, os campos do produto ficam NULL.

Visualmente:

Categorias (completo) + correspondências dos Produtos

------------------------------------------------------------------------

## 📊 Comparação Final

  JOIN         O que retorna
  ------------ -------------------------------------------------------
  INNER JOIN   Apenas registros com correspondência nas duas tabelas
  LEFT JOIN    Todos da esquerda + correspondências da direita
  RIGHT JOIN   Todos da direita + correspondências da esquerda

------------------------------------------------------------------------

## 🎯 Resumo Final

-   Use **INNER JOIN** quando quiser apenas dados relacionados.
-   Use **LEFT JOIN** quando quiser manter todos os registros da tabela
    principal.
-   Use **RIGHT JOIN** quando a prioridade for manter todos os registros
    da tabela secundária.

------------------------------------------------------------------------

📌 Arquivo gerado automaticamente para estudo de Banco de Dados (SQL).
