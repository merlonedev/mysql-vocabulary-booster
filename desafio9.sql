SELECT 
    distinct CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome completo',
    (SELECT 
            COUNT(*)
        FROM
            w3schools.orders
        WHERE
            EmployeeID = e.EmployeeID) AS 'Total de pedidos'
FROM
    w3schools.employees AS e
        INNER JOIN
    w3schools.orders AS o ON e.EmployeeID = o.EmployeeID
ORDER BY `Total de pedidos`;
