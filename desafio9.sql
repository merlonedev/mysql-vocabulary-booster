SELECT
CONCAT(employees.FirstName, " ", employees.LastName) "Nome completo",
COUNT(*) AS "Total de pedidos"
FROM w3schools.orders AS orders
INNER JOIN w3schools.employees AS employees
ON employees.EmployeeID = orders.EmployeeID
GROUP BY orders.EmployeeID
ORDER BY `Total de pedidos` ASC;
