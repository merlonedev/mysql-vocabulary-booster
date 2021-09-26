use w3schools;
SELECT 
    concat(e.FirstName, ' ', e.LastName) AS 'Nome completo',
    count(o.OrderID) as 'Total de pedidos'
FROM
    employees AS e
        INNER JOIN
    orders AS o ON o.EmployeeID = e.employeeID
    group by `Nome completo`
    order by `Total de pedidos`;
