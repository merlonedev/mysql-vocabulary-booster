SELECT
    CONCAT(EM.FirstName, ' ', EM.LastName) AS 'Nome completo',
    COUNT(*) AS 'Total de pedidos'
FROM
    w3schools.orders AS ORD
        INNER JOIN
    w3schools.employees AS EM ON EM.EmployeeID = ORD.EmployeeID
GROUP BY ORD.EmployeeID
ORDER BY `Total de pedidos`;
