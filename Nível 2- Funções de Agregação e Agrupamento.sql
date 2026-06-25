USE ecommerce_treino;
-- Visualizacao das tabelas
show tables;
-- visão geral dos tabelas
-- Clientes
SELECT * FROM clientes;
-- Pedidos
SELECT * FROM pedidos;
-- Produtos
SELECT * FROM produtos;

-- ###################################

-- 05-Descubra quantos clientes estão cadastrados no banco de dados.
SELECT COUNT(*) AS total_clientes 
FROM clientes;

-- 06-Calcule o valor total gasto em pedidos e a média de valor dos pedidos realizados.

SELECT SUM(total) AS Soma_total, 
AVG(total) AS media_pedidos 
FROM pedidos;

-- 07-Encontre o preço do produto mais caro da categoria 'Eletrônicos'.
-- MINHA RESPOSTA
SELECT nome_produto, preco
FROM produtos
ORDER BY preco DESC LIMIT 1;
;
-- RESPOSTA CORRETA
SELECT nome_produto, MAX(preco) AS maior_preco 
FROM produtos 
WHERE categoria = 'Eletrônicos'; 

-- 08-Group By: Agrupe os produtos por categoria e mostre a quantidade de produtos em cada uma.
SELECT categoria, count(*) AS total_categorias 
FROM produtos
GROUP BY categoria;

SELECT nome_produto, categoria, MAX(preco) AS maior_valor_categorias, nome_produto, MIN(preco) AS menor_valor_categorias  
FROM produtos
GROUP BY categoria;


-- 
