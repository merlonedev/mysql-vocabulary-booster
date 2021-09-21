SELECT 
	(SELECT CONCAT(FirstName, ' ', LastName) FROM w3schools.employees WHERE EmployeeID = o.EmployeeID) AS `Nome completo`,
    COUNT(o.CustomerID) AS `Total de pedidos`
FROM w3schools.orders AS o
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
