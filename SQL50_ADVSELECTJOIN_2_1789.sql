SELECT e.employee_id, department_id
FROM
Employee as e
INNER JOIN 
(SELECT employee_id, COUNT(department_id) as n_dep
FROM Employee
GROUP BY
employee_id) as a
ON
e.employee_id = a.employee_id
WHERE n_dep = 1 OR primary_flag = 'Y'