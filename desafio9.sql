SELECT 
    CONCAT(emp.FirstName, ' ', emp.LastName) AS 'Nome completo',
    COUNT(emp.EmployeeID) AS 'Total de pedidos'
FROM
    w3schools.employees emp
        JOIN
    w3schools.orders o ON o.EmployeeID = emp.EmployeeID
GROUP BY emp.EmployeeID
ORDER BY COUNT(emp.EmployeeID);
