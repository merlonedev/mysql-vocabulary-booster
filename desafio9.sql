SELECT
  CONCAT(E.FirstName, ' ', E.LastName) AS `Nome completo`,
  COUNT(O.EmployeeID) AS `Total de pedidos`
FROM
  w3schools.orders AS O
JOIN
  w3schools.employees AS E
ON
  O.employeeID = E.employeeID
GROUP BY
  O.employeeID
ORDER BY
  COUNT(O.EmployeeID);
