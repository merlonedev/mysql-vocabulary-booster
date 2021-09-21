SELECT 
    (SELECT 
            CONCAT(FirstName, ' ', LastName)
        FROM
            w3schools.employees AS e
        WHERE
            e.EmployeeID = o.EmployeeID) AS `Nome completo`,
    COUNT(o.OrderID) AS `Total de pedidos`
FROM
    w3schools.orders AS o
GROUP BY o.EmployeeID
ORDER BY `Total de pedidos`;
