SELECT
  cs1.ContactName AS 'Nome',
  cs1.Country AS 'País',
  COUNT(cs1.Country) - 1 AS 'Número de compatriotas'
FROM
  w3schools.customers AS cs1,
  w3schools.customers AS cs2
WHERE cs2.Country = cs1.Country AND cs2.CustomerID != cs1.CustomerID
GROUP BY
  `Nome`
HAVING
  `Número de compatriotas` <> 0
ORDER BY
  `Nome`;
