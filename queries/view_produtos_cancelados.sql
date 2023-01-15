
CREATE VIEW produtos_cancelados AS ( 
SELECT 
	p."Produto",
	v."Codigo",
	count(*) AS count_cancelled,
	sum(v."Qty") AS sum_qty,
	(SELECT 
		CAST(substring(p."Preco",2,length(p."Preco")) AS NUMERIC) FROM produtos p WHERE v."Codigo" = p."Codigo") * sum(v."Qty") AS total_price_cancelled
FROM vendas v
INNER JOIN produtos p
	ON v."Codigo" = p."Codigo"
WHERE v."Courier Status" = 'Cancelled'
GROUP BY p."Produto", v."Codigo", p."Preco"
ORDER BY total_price_cancelled DESC
);