SELECT
  CONCAT(e.FirstName, ' ', e.LastName) AS `Nome completo`,
  COUNT(*) AS `Total de pedidos`
FROM
  w3schools.employees AS e
  INNER JOIN w3schools.orders AS o ON o.employeeID = e.employeeID
GROUP BY
  `Nome Completo`
ORDER BY
  `Total de pedidos`;
