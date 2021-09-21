SELECT 
    CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome completo',
    COUNT(o.EmployeeID) AS 'Total de pedidos'
FROM
    employees AS e
        INNER JOIN
    orders AS o ON o.EmployeeID = e.EmployeeID
GROUP BY `Nome Completo`
ORDER BY `Total de pedidos`;
