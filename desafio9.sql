SELECT concat(employees.FirstName, ' ' ,employees.LastName) AS 'Nome completo',
COUNT(o.EmployeeID) AS `Total de pedidos`
FROM w3schools.orders AS o
JOIN w3schools.employees AS employees ON o.EmployeeID = employees.EmployeeID
GROUP BY o.EmployeeID
ORDER BY `Total de pedidos`;
