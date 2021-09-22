SELECT 
    CONCAT(FirstName, ' ', LastName) AS `Nome completo`,
    COUNT(o.orderID) AS `Total de pedidos`
FROM
    employees AS e
        INNER JOIN
    orders AS o ON e.employeeID = o.employeeID
GROUP BY `Nome Completo`
ORDER BY `Total de pedidos`
