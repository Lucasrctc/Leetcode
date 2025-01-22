SELECT 
query_name, 
Round(AVG(1.0*rating/position), 2) AS quality, 
ROUND(100.0*COUNT(CASE WHEN rating < 3 THEN 1 ELSE null END) / COUNT(*), 2) AS poor_query_percentage
FROM queries
GROUP BY
query_name