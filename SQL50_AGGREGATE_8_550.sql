-- Write your PostgreSQL query statement below
SELECT ROUND(AVG(CASE WHEN r.player_id IS NULL THEN 0 ELSE 1 END), 2) as fraction
FROM
(SELECT player_id, MIN(event_date) + 1 as s_l
FROM
Activity 
GROUP BY
player_id) as l
LEFT OUTER JOIN
Activity as r
ON
l.player_id = r.player_id
AND
l.s_l = r.event_date