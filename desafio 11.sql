SELECT
  coutr1.ContactName AS 'Nome',
  coutr1.Country AS 'País',
  COUNT(*) AS 'Número de compatriotas' 
FROM
  w3schools.customers AS coutr1,
  w3schools.customers AS coutr2 
WHERE
  coutr1.Country = coutr2.Country AND coutr1.ContactName <> coutr2.ContactName
GROUP BY
  `Nome`, coutr1.Country 
ORDER BY
    `Nome`;
