# Write your MySQL query statement below
SELECT employee_id
FROM Employees
WHERE salary < 3e4 
AND
manager_id NOT IN (SELECT employee_id FROM Employees)
ORDER BY employee_id;
