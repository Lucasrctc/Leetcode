WITH top1 AS
(
	SELECT 
	departmentId, MAX(salary)
	FROM
	Employee
	GROUP BY
	departmentId
),
top2 AS
(
	SELECT 
	departmentId, MAX(salary)
	FROM
	Employee
	WHERE
	(departmentId, salary) NOT IN
	(SELECT * FROM top1)
	GROUP BY
	departmentId
),
top3 AS
(
	SELECT 
	departmentId, MAX(salary)
	FROM
	Employee
	WHERE
	(departmentId, salary) NOT IN
	(SELECT * FROM top1)
	AND
	(departmentId, salary) NOT IN
	(SELECT * FROM top2)
	GROUP BY
	departmentId
)
SELECT 
	d.name as "Department", e.name as "Employee", salary as "Salary"
FROM
	Employee as e
INNER JOIN
	Department as d
ON 
	e.departmentId = d.id
WHERE
	(departmentId, salary) IN
	(SELECT * FROM top1)
OR 
	(departmentId, salary) IN
	(SELECT * FROM top2)
OR 
	(departmentId, salary) IN
	(SELECT * FROM top3)

