SELECT 
    CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome completo',
    od.Quantity AS 'Total de pedidos'
FROM
    w3schools.employees AS e
        INNER JOIN
    w3schools.order_details AS od
        INNER JOIN
    w3schools.orders AS o ON od.OrderID = o.OrderID
        AND e.EmployeeID = o.EmployeeID
GROUP BY CONCAT(e.FirstName, ' ', e.LastName)
ORDER BY od.Quantity;
