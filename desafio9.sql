SELECT CONCAT(E.FirstName, ' ', E.LastName) AS `Nome completo`,
COUNT(O.OrderID) AS `Total de pedidos`
FROM w3schools.orders O
INNER JOIN w3schools.employees E
ON O.EmployeeID = E.EmployeeID
GROUP BY O.EmployeeID
ORDER BY `Total de pedidos`;
