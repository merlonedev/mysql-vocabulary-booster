SELECT 
    CONCAT(t2.FirstName, ' ', t2.LastName) AS `Nome completo`,
    COUNT(OrderID) AS `Total de pedidos`
FROM
    w3schools.orders AS t1
        INNER JOIN
    w3schools.employees AS t2 ON t1.EmployeeID = t2.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos` ASC;
