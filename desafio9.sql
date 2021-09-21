SELECT 
    CONCAT(employee.FirstName,
            ' ',
            employee.LastName) AS `Nome completo`,
    COUNT(_order.EmployeeID) AS `Total de pedidos`
FROM
    w3schools.orders AS _order
        RIGHT JOIN
    w3schools.employees AS employee ON _order.EmployeeID = employee.EmployeeID
GROUP BY `Nome completo`
HAVING `Total de pedidos` > 0
ORDER BY `Total de pedidos`;
