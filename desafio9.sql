SELECT CONCAT(FirstName, ' ', LastName) AS 'Nome completo',  
COUNT(ord.OrderID) AS 'Total de pedidos' 
FROM w3schools.employees AS emp
INNER JOIN w3schools.orders AS ord
ON emp.EmployeeID = ord.EmployeeID
GROUP BY `Nome Completo`
ORDER BY `Total de pedidos`;
