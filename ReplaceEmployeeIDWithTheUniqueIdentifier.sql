# Write your MySQL query statement below
SELECT COALESCE(u.unique_id,NULL) as unique_id, name
FROM Employees e
LEFT JOIN EmployeeUNI u ON e.id = u.id
ORDER BY e.id;
