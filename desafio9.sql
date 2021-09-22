SELECT CONCAT(e.FirstName, ' ', e.LastName) AS `Nome completo`,
COUNT(CONCAT(e.FirstName, ' ', e.LastName)) AS `Total de pedidos`
FROM employees AS e
INNER JOIN orders AS o
ON e.EmployeeID = o.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
