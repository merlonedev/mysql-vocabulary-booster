SELECT
  c1.ContactName AS `Nome`,
  c1.Country AS `País`,
  COUNT(c2.Country) - 1 AS `Número de compatriotas`
FROM
  w3schools.customers c1, w3schools.customers c2
WHERE c1.Country = c2.Country
GROUP BY c1.ContactName, c1.Country
HAVING `Número de compatriotas` <> 0
ORDER BY `Nome`;
