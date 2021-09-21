SELECT 
    CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome completo',
    count(o.EmployeeID) AS 'Total de pedidos'
FROM
    employees AS e
        JOIN
    orders AS o ON o.EmployeeID = e.EmployeeID
GROUP BY o.EmployeeID
ORDER BY `Total de pedidos`;
