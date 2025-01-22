SELECT 
r.contest_id, 
(100.0 * Count(r.user_id) / 
(SELECT COUNT (DISTINCT user_id) FROM users))::NUMERIC(5, 2)
AS percentage
FROM 
Register as r
GROUP BY
r.contest_id
ORDER BY
percentage DESC,
contest_id ASC