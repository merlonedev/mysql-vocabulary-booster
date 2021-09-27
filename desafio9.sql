SELECT 
	CONCAT(we.FirstName, ' ', we.LastName) AS 'Nome completo',
    COUNT(wo.EmployeeID) AS 'Total de pedidos'
FROM
	w3schools.employees AS we
		INNER JOIN 
	w3schools.orders AS wo ON wo.EmployeeID LIKE we.EmployeeID
GROUP BY we.EmployeeID 
ORDER BY COUNT(wo.EmployeeID)