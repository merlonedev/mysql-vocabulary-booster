SELECT 
    CONCAT(E.FirstName, ' ', E.LastName) AS 'Nome completo',
    Sum(D.Quantity) AS 'Total de pedidos'
FROM
    w3schools.orders AS O
        JOIN
    w3schools.employees AS E ON O.EmployeeID = E.EmployeeID
        JOIN
    w3schools.order_details AS D ON O.OrderID = D.OrderID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos` ASC;
