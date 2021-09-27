SELECT
    (SELECT 
            CONCAT(FirstName, ' ', LastName)
        FROM
            w3schools.employees
        WHERE
            w3schools.orders.EmployeeID = w3schools.employees.EmployeeID) AS 'Nome completo',
    COUNT(*) AS 'Total de pedidos'
FROM
    w3schools.orders
GROUP BY EmployeeID
ORDER BY 2;
