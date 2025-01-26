-- Write your PostgreSQL query statement below
SELECT round(100*AVG(x), 2) as immediate_percentage
FROM
(SELECT CASE WHEN MIN(order_date) = MIN(customer_pref_delivery_date) THEN 1 ELSE 0 END as x
FROM
Delivery
GROUP BY
customer_id)

