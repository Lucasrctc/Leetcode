SELECT m.employee_id, m.name, COUNT(e.reports_to) as reports_count, ROUND(AVG(e.age), 0) as average_age
FROM Employees as m
INNER JOIN Employees as e
ON m.employee_id = e.reports_to
GROUP BY
m.employee_id, m.name
ORDER BY
m.employee_id