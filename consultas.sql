-- Seleção simples
SELECT * FROM vendas;

-- Filtro por data
SELECT * 
FROM vendas
WHERE data_venda >= '2024-01-01';

-- Faturamento total
SELECT SUM(valor_total) AS faturamento_total
FROM vendas;

-- Quantidade de vendas por produto
SELECT produto, COUNT(*) AS total_vendas
FROM vendas
GROUP BY produto;

-- Faturamento por produto
SELECT produto, SUM(valor_total) AS faturamento
FROM vendas
GROUP BY produto
ORDER BY faturamento DESC;

-- Junção com tabela clientes
SELECT v.id_venda, c.nome, v.produto, v.valor_total
FROM vendas v
JOIN clientes c ON c.id_cliente = v.id_cliente;
