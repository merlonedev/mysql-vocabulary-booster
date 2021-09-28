SELECT
    CONCAT(funcionarios.FirstName,' ', funcionarios.LastName) AS 'Nome completo',
    COUNT(*) AS 'Total de pedidos'
FROM
    w3schools.employees AS funcionarios
        INNER JOIN
    w3schools.orders AS pedidos ON funcionarios.EmployeeID = pedidos.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
