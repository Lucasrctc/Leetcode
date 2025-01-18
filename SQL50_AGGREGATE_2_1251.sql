SELECT p.product_id, Coalesce(ROUND(1.0*SUM(price*units)/SUM(units), 2), 0) AS average_price
FROM 
UnitsSold as u
RIGHT OUTER JOIN 
Prices as p
ON u.product_id = p.product_id AND u.purchase_date BETWEEN p.start_date and p.end_date
GROUP BY
p.product_id