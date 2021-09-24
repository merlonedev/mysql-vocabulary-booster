SELECT 
    CONCAT(e.FirstName, ' ', e.LastName) `Nome completo`,
    COUNT(*) `Total de pedidos`
FROM
    w3schools.employees e
        JOIN
    w3schools.orders o ON o.EmployeeID = e.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
