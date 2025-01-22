SELECT 
project_id, ROUND(AVG(experience_years), 2) as average_years
FROM
Employee as e
INNER JOIN
Project as p
ON
e.employee_id = p.employee_id
GROUP BY project_id