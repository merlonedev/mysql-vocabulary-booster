SELECT 
    CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome completo',
    COUNT(o.EmployeeId) AS 'Total de pedidos'
FROM
    orders o
        INNER JOIN
    employees e ON o.EmployeeID = e.EmployeeID
GROUP BY CONCAT(e.FirstName, ' ', e.LastName)
ORDER BY COUNT(o.EmployeeId);
