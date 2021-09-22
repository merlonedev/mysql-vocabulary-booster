SELECT CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome completo', sub.`Total de pedidos`
FROM (SELECT EmployeeID, COUNT(*) AS 'Total de pedidos' FROM w3schools.orders
GROUP BY EmployeeID) AS sub
INNER JOIN w3schools.employees AS e
ON e.EmployeeID = sub.EMployeeID
ORDER BY 2;
