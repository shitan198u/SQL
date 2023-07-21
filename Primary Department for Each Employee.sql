SELECT e1.employee_id, e2.department_id
FROM Employee e1
LEFT JOIN Employee e2
ON e1.employee_id = e2.employee_id
GROUP BY e1.employee_id, e2.primary_flag
HAVING (COUNT(e1.employee_id) > 1 AND e2.primary_flag = 'Y')
OR (COUNT(e1.employee_id) = 1);
