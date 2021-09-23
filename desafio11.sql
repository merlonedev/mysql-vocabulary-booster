SELECT 
  c1.ContactName AS `Nome`,
  c1.Country AS `País`,
  COUNT(c1.Country) - 1 AS `Número de compatriotas`
FROM 
  w3schools.customers AS c1
JOIN w3schools.customers AS c2 ON c1.Country = c2.Country
GROUP BY `País`, `Nome`
ORDER BY `Nome`;
