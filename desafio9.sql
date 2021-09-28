SELECT
CONCAT(N.FirstName, ' ', N.LastName) AS `Nome completo`,
T.total AS `Total de pedidos`
FROM
(SELECT EmployeeID, COUNT(EmployeeID) AS `total` FROM w3schools.orders GROUP BY EmployeeID) as T
INNER JOIN w3schools.employees N
ON T.EmployeeID = N.EmployeeID
ORDER BY `Total de pedidos`;
