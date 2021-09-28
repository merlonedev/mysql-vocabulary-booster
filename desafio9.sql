SELECT
	CONCAT(EMP.FirstName, ' ', EMP.LastName) as 'Nome completo',
    COUNT(*) as 'Total de pedidos'
FROM
w3schools.employees EMP
JOIN
w3schools.orders ORD ON ORD.EmployeeID = EMP.EmployeeID
GROUP BY CONCAT(EMP.FirstName, ' ', EMP.LastName)
ORDER BY COUNT(*);
