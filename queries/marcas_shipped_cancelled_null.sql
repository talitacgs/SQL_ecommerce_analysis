-- CONTAGEM TOTAL DE MARCAS VENDIDAS
CREATE VIEW total_marcas AS (
SELECT 
	COUNT(*) AS total_marcas, marca 
FROM vendas_marcas
GROUP BY 2
ORDER BY 1 DESC
);

SELECT * FROM total_marcas;


-- CONTAGEM TOTAL POR MARCAS ENTREGUES
CREATE VIEW total_shipped AS (
SELECT 
	COUNT(*) AS total_shipped, marca
FROM vendas_marcas
WHERE "Courier Status" = 'Shipped'
GROUP BY 2
ORDER BY 1 DESC
);

-- CONTAGEM TOTAL POR MARCAS CANCELADAS
CREATE VIEW total_cancelled AS (
SELECT 
	COUNT(*) AS total_cancelled, marca
FROM vendas_marcas
WHERE "Courier Status" = 'Cancelled'
GROUP BY 2
ORDER BY 1 DESC
);


-- CONTAGEM TOTAL DE NULOS POR MARCA
CREATE VIEW total_null AS (
SELECT 
	COUNT(*) AS total_null, marca
FROM vendas_marcas
WHERE "Courier Status" IS NULL
GROUP BY 2
ORDER BY 1 DESC
);
