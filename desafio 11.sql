SELECT
  coutr1.ContactName AS 'Nome',
  coutr1.Country AS 'País',
  COUNT(coutr1.Country) - 1 AS 'Número de compatriotas' 
FROM
  w3schools.customers AS coutr1,
  w3schools.customers AS coutr2 
WHERE coutr2.Country = coutr1.Country AND coutr2.CustomerID != coutr1.CustomerID
GROUP BY
  `Nome` 
HAVING
  `Número de compatriotas` <> 0 
ORDER BY
  `Nome`;
