SELECT
	  CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome completo',
    COUNT(o.EmployeeID) AS 'Total de pedidos'
FROM
	  orders AS o
		  INNER JOIN
	  employees AS e ON o.EmployeeID = e.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
