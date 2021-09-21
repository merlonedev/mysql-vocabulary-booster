SELECT 
    CONCAT(FirstName, ' ', LastName) AS `Nome completo`,
    COUNT(o.OrderID) AS `Total de pedidos`
FROM
    w3schools.employees AS e
        LEFT JOIN
    w3schools.orders AS o ON e.EmployeeID = o.EmployeeID
GROUP BY `Nome completo`
HAVING `Total de pedidos` > 0
ORDER BY `Total de pedidos`;
