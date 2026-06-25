USE ecommerce_treino;
-- nomes tabelas
show tables;

-- consulta gerel todas as tabelas
-- #############################
-- Tabela Clientes
SELECT * FROM clientes;

-- Tabala pedidos
SELECT * FROM pedidos;

-- Produtos
 SELECT * FROM produtos;
-- #####################

-- 01-consulta que retorne o nome e o e-mail de todos os clientes cadastrados.
SELECT nome, email FROM clientes;

-- 02-Selecione todos os produtos da categoria 'Eletrônicos'.
SELECT * FROM produtos 
WHERE categoria = 'Eletrônicos';

-- 03-Liste os produtos que custam mais de R$ 500,00.
SELECT * 
FROM produtos
WHERE preco > 500;

-- 04-Exiba a lista de produtos ordenada do mais barato para o mais caro.

SELECT nome_produto, preco FROM produtos ORDER BY preco; 
