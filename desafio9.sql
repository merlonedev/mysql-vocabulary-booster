SELECT 
    CONCAT(FirstName, ' ', LastName) AS `Nome completo`,
    COUNT(ShipperID) AS `Total de pedidos`
FROM
    w3schools.employees AS E
        JOIN
    orders AS O ON O.EmployeeID = E.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
