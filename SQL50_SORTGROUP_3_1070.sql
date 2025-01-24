SELECT s.product_id, first_year, quantity, price
FROM sales as s
INNER JOIN
(SELECT 
product_id, MIN(year) as first_year
FROM
Sales
GROUP BY
product_id
) as t
ON s.product_id = t.product_id
AND
year = first_year
