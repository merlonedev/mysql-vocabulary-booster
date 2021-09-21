SELECT 
    CONCAT(FirstName, ' ', LastName) AS `Nome completo`,
    COUNT(OrderID) AS `Total de pedidos`
FROM
    w3schools.orders AS ords
    INNER JOIN w3schools.employees AS emp ON emp.EmployeeID = ords.EmployeeID
GROUP BY ords.EmployeeID
ORDER BY `Total de pedidos`;
