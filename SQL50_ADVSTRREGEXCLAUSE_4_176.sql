-- Write your PostgreSQL query statement below
SELECT MAX(salary) as SecondHighestSalary
FROM Employee
WHERE salary < (SELECT MAX(salary) from Employee)