SELECT customer_id, COUNT(*) as count_no_trans
FROM
Visits as v
FULL OUTER JOIN
transactions as t
on v.visit_id = t.visit_id
WHERE
t.visit_id IS null
GROUP BY customer_id