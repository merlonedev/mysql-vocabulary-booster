SELECT 
coutr1.ContactName AS `Nome`,
coutr1.Country AS `País`,
(SELECT 
COUNT(*) - 1 FROM w3schools.customers coutr2
WHERE coutr2.Country = coutr1.Country) AS `Número de compatriotas`
FROM w3schools.customers AS coutr1
HAVING `Número de compatriotas` <> 0
ORDER BY `Nome`;
