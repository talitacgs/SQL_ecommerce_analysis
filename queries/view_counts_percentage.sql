CREATE VIEW counts_percentage AS (
SELECT
    c.marca,
    c.total_count,
    round(100 * total_count/sum_total.sum,2) AS percent_total,
    c.count_shipped,
    round(100 * count_shipped/sum_shipped.sum,2) AS percent_shipped,
    c.count_cancelled,
    round(100 * count_cancelled/sum_cancelled.sum,2) AS percent_cancelled
FROM counts c
CROSS JOIN (
    SELECT Sum(total_count)
    FROM counts c 
    ) AS sum_total
CROSS JOIN (
	SELECT Sum(count_shipped)
    FROM counts c 
    ) AS sum_shipped
CROSS JOIN (
	SELECT Sum(count_cancelled)
    FROM counts c 
    ) AS sum_cancelled
ORDER BY c.total_count DESC
);

SELECT sum(count_shipped) FROM counts c 