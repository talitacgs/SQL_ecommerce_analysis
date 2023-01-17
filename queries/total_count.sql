-- VIEW DA TOTAL_COUNT 
-- CONTAGEM TOTAL DE ENTREGUES, CANCELADOS E NULOS POR MARCA

CREATE VIEW total_count AS (
SELECT 
	t.marca,
	t.total_marcas,
	s.total_shipped,
	c.total_cancelled,
	n.total_null
FROM total_marcas t
INNER JOIN total_shipped AS s 
	ON t.marca = s.marca
INNER JOIN total_cancelled AS c 
	ON t.marca = c.marca
INNER JOIN total_null AS n
	ON t.marca = n.marca
);

SELECT * FROM total_count