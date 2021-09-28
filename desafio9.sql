SELECT 
    CONCAT(em.FirstName, ' ', em.LastName) AS 'Nome completo',
    COUNT(word.OrderID) AS 'Total de pedidos'
FROM
    w3schools.employees AS em
        INNER JOIN
    w3schools.orders AS word ON em.EmployeeID = word.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
