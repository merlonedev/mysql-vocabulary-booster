SELECT CONCAT(FirstName, ' ', LastName) AS `Nome completo`,
COUNT(*) AS `Total de pedidos`
FROM w3schools.orders
INNER JOIN w3schools.employees ON employees.EmployeeID = orders.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos` ASC;
