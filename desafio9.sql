SELECT 
    CONCAT(e.FirstName, ' ', e.LastName) AS `Nome completo`,
    COUNT(o.OrderID) AS `Total de pedidos`
FROM
    employees AS e
        INNER JOIN
    orders AS o ON e.EmployeeID = o.EmployeeID
ORDER BY `Total de pedidos`;
