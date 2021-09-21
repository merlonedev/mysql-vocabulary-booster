SELECT
CONCAT(e.FirstName, ' ', e.LastName) AS `Nome completo`,
(
SELECT COUNT(*)
FROM w3schools.orders AS o
WHERE o.EmployeeID = e.EmployeeID
GROUP BY o.EmployeeID
) AS `Total de pedidos`
FROM w3schools.employees AS e
HAVING `Total de pedidos` IS NOT NULL
ORDER BY `Total de pedidos`;
