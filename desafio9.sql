SELECT 
    CONCAT(emp.FirstName, ' ', emp.LastName) AS 'Nome completo',
    COUNT(*) AS 'Total de pedidos'
FROM
    w3schools.employees AS emp
        INNER JOIN
    w3schools.orders AS O ON O.EmployeeID = emp.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;