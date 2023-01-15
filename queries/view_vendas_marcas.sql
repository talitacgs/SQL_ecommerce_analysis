-- criar view com as marcas e a tabela vendas
CREATE VIEW vendas_marcas AS (
select 
	v."Order ID",
	v."Date",
	m."Produto",
	v."Codigo",
	v."Qty",
	v."Courier Status",
	m."marca"
FROM vendas v 
INNER JOIN marcas m 
	ON v."Codigo" = m."Codigo"
);

SELECT * FROM vendas_marcas 