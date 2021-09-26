SELECT (CONCAT(T1.firstName,' ',T1.LastName)) AS 'Nome completo',
COUNT(T2.EmployeeID) AS 'Total de pedidos'
FROM w3schools.employees AS T1
INNER JOIN w3schools.orders AS T2
ON T1.EmployeeID = T2.EmployeeID
GROUP BY T2.EmployeeID
ORDER BY COUNT(T2.EmployeeID) ASC;
