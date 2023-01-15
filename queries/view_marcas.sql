-- criar view com as marcas e as colunas de produtos
CREATE VIEW marcas AS (
select 
	*,
	CASE
		WHEN length(split_part("Produto", ' ', 1)) < 2
			THEN NULL
		WHEN split_part("Produto", ' ', 1) = 'New'
			THEN 'Apple'
		ELSE
			split_part("Produto", ' ', 1)
	END AS marca
from produtos p
);

SELECT * FROM marcas 