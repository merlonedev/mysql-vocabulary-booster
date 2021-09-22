SELECT 
    (SELECT 
            CONCAT(e.firstName, ' ', e.lastName)
        FROM
            employees AS e
        WHERE
            e.employeeID = o.employeeID) AS 'Nome completo',
    COUNT(EmployeeID) AS 'Total de pedidos'
FROM
    orders AS o
GROUP BY `Nome completo`
ORDER BY `Nome completo`;
