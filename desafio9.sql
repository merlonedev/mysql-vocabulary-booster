SELECT 
    CONCAT(FirstName, + ' ', + LastName) AS 'Nome Completo',
    COUNT(FirstName) AS 'Total de pedidos'
FROM
    w3schools.orders AS o
        INNER JOIN
    w3schools.employees AS e ON e.EmployeeID = o.EmployeeID
GROUP BY 'Nome COmpleto'
ORDER BY 'Total de pedidos';
