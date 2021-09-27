SELECT CONCAT(FirstName, ' ', LastName) AS `Nome completo`,
COUNT(orders.EmployeeID) AS `Total de pedidos`
FROM w3schools.orders AS orders
INNER JOIN w3schools.employees AS employees
ON orders.EmployeeID = employees.EmployeeID
GROUP BY orders.EmployeeID
ORDER BY COUNT(orders.EmployeeID);
