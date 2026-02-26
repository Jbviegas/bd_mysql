# 📘 Guia Completo sobre INNER JOIN, LEFT JOIN e RIGHT JOIN

![SQL](https://img.shields.io/badge/SQL-JOIN-blue) ![Banco de
Dados](https://img.shields.io/badge/Database-Relacionamentos-green)
![Nível](https://img.shields.io/badge/Nível-Intermediário-orange)

------------------------------------------------------------------------

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

## 🎯 Resumo 

-   Use **INNER JOIN** quando quiser apenas dados relacionados.
-   Use **LEFT JOIN** quando quiser manter todos os registros da tabela
    principal.
-   Use **RIGHT JOIN** quando a prioridade for manter todos os registros
    da tabela secundária.

------------------------------------------------------------------------

# 📘 Guia Definitivo sobre JOINs no SQL

![SQL](https://img.shields.io/badge/SQL-JOIN-blue) ![Banco de
Dados](https://img.shields.io/badge/Database-Relacionamentos-green)
![Nível](https://img.shields.io/badge/Nível-Intermediário-orange)

------------------------------------------------------------------------

## 📑 Sumário

-   [1️⃣ INNER JOIN (sem filtro)](#1️⃣-inner-join-sem-filtro)
-   [2️⃣ Como identificar tabela da esquerda e
    direita](#2️⃣-como-identificar-tabela-da-esquerda-e-direita)
-   [3️⃣ Diferença entre INNER, LEFT e RIGHT
    JOIN](#3️⃣-diferença-entre-inner-left-e-right-join)
-   [📊 Comparação Geral](#-comparação-geral)
-   [🎯 Resumo Estratégico](#-resumo-estratégico)

------------------------------------------------------------------------

## 1️⃣ INNER JOIN (sem filtro)

### 📌 Exemplo:

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

### 📖 Como se lê:

Selecione os dados da tabela produtos, juntando com categorias, onde o
categoria_id do produto seja igual ao id da categoria.

### 🧠 O que acontece:

-   Começa em `tb_produtos`
-   Junta com `tb_categorias`
-   Só retorna registros que possuem correspondência nas duas tabelas

------------------------------------------------------------------------

## 2️⃣ Como identificar tabela da esquerda e direita

### ✅ Regra Principal

-   Tabela da **esquerda** → vem após o `FROM`
-   Tabela da **direita** → vem após o `JOIN`

### 🔎 Exemplo:

``` sql
SELECT *
FROM tb_produtos
LEFT JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;
```

-   Esquerda → tb_produtos
-   Direita → tb_categorias

### 🎯 Regra de Ouro

FROM ← esquerda\
JOIN ← direita

------------------------------------------------------------------------

## 3️⃣ Diferença entre INNER, LEFT e RIGHT JOIN

### 🔹 INNER JOIN

Retorna apenas registros com correspondência nas duas tabelas.

------------------------------------------------------------------------

### 🔹 LEFT JOIN

Retorna todos os registros da esquerda + correspondências da direita.

Se não houver correspondência → campos da direita ficam NULL.

------------------------------------------------------------------------

### 🔹 RIGHT JOIN

Retorna todos os registros da direita + correspondências da esquerda.

Se não houver correspondência → campos da esquerda ficam NULL.

------------------------------------------------------------------------

## 📊 Comparação Geral

  JOIN         O que retorna
  ------------ -------------------------------------
  INNER JOIN   Apenas interseção das tabelas
  LEFT JOIN    Tudo da esquerda + correspondências
  RIGHT JOIN   Tudo da direita + correspondências

------------------------------------------------------------------------

## 🎯 Resumo Estratégico

✔ Use **INNER JOIN** para buscar apenas dados relacionados.\
✔ Use **LEFT JOIN** quando a tabela principal precisa aparecer
completamente.\
✔ Use **RIGHT JOIN** quando a prioridade for a tabela secundária.

------------------------------------------------------------------------



