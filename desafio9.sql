SELECT 
    CONCAT(employees.FirstName,
            ' ',
            employees.LastName) AS 'Nome completo',
    COUNT(orders.OrderID) AS 'Total de pedidos'
FROM
    orders AS orders
        INNER JOIN
    employees AS employees ON employees.EmployeeID = orders.EmployeeID
GROUP BY CONCAT(employees.FirstName,
        ' ',
        employees.LastName)
ORDER BY COUNT(orders.OrderID) ASC;