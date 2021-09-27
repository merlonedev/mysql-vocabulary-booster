SELECT
CONCAT(t2.FirstName, ' ', t2.LastName) AS `Nome completo`,
t1.total AS `Total de pedidos`
FROM
(SELECT EmployeeID, COUNT(EmployeeID) AS `total` FROM w3schools.orders GROUP BY EmployeeID) as t1
INNER JOIN w3schools.employees t2
ON t1.EmployeeID = t2.EmployeeID
ORDER BY `Total de pedidos`;
