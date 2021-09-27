SELECT 
    CONCAT(employee.FirstName, ' ', employee.LastName) AS 'Nome completo',
    COUNT(orders.EmployeeID) AS 'Total de pedidos'
FROM
    w3schools.employees AS employee
        INNER JOIN
            w3schools.orders AS orders 
            ON orders.EmployeeID = employee.EmployeeID
GROUP BY employee.EmployeeID
ORDER BY COUNT(orders.EmployeeID);
