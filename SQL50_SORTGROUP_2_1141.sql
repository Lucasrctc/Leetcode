SELECT 
activity_date as day, COUNT( DISTINCT user_id) AS active_users
FROM
Activity
WHERE
'2019-07-27' - activity_date >= 0 AND '2019-07-27' - activity_date < 30
GROUP BY
activity_date