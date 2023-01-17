CREATE VIEW marcas AS (
SELECT 
	*,
	CASE
		WHEN length(split_part("Produto", ' ', 1)) < 2
			THEN 'PaperGames'
		WHEN split_part("Produto", ' ', 1) = 'New'
			THEN 'Apple'
		ELSE
			split_part("Produto", ' ', 1)
	END AS marca
FROM produtos p
);

SELECT * FROM marcas;

