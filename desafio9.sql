SELECT 
    CONCAT(employee.FirstName,
            ' ',
            employee.LastName) AS 'Nome completo',
    COUNT(*) AS 'Total de pedidos'
FROM
    w3schools.orders AS orders
        INNER JOIN
    w3schools.employees AS employee ON orders.EmployeeID = employee.EmployeeID
GROUP BY orders.EmployeeID
ORDER BY 2 ASC;
