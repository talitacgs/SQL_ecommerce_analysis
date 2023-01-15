-- view com contagem total, contagem entregues e contagem cancelados
CREATE VIEW counts AS (
WITH

--- view entregues
count_shipped AS (
SELECT
	count(*) AS count_shipped,
	marca
FROM vendas_marcas
WHERE "Courier Status" = 'Shipped'
GROUP BY 2
ORDER BY 1 DESC
),


-- view cancelados
 count_cancelled AS (
SELECT
	count(*) AS count_cancelled,
	marca
FROM vendas_marcas
WHERE "Courier Status" = 'Cancelled'
GROUP BY 2
ORDER BY 1 DESC
),

-- select da contagem total	
 total_count AS (
SELECT
	count(*) AS total_count,
	marca
FROM vendas_marcas
GROUP BY 2
ORDER BY 1 DESC
)


SELECT
	t.marca,
	t.total_count AS total_count,
	s.count_shipped AS count_shipped,
	c.count_cancelled AS count_cancelled
FROM total_count t
INNER JOIN count_shipped AS s
	ON t.marca = s.marca
INNER JOIN count_cancelled AS c
	ON t.marca = c.marca
)
	
	