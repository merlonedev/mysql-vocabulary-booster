SELECT 
    CONCAT(employees.FirstName, ' ', employees.LastName) AS 'Nome completo',
    COUNT(*) AS 'Total de pedidos'
FROM
    w3schools.employees AS employees
        JOIN
    w3schools.orders AS orders ON employees.EmployeeID = orders.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de Pedidos`;
