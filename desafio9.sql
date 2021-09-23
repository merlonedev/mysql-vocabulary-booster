SELECT 
    CONCAT(FirstName, ' ', LastName) AS `Nome completo`,
    COUNT(o.OrderId) AS `Total de pedidos`
FROM
    employees AS e
        JOIN
    orders AS o ON o.EmployeeID = e.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
