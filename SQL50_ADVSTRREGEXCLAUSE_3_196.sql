-- Write your PostgreSQL query statement below
DELETE FROM
Person
WHERE
(id, email) NOT IN (SELECT MIN(id) as id, email FROM PERSON GROUP BY email)