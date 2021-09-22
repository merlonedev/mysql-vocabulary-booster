SELECT c1.ContactName AS `Nome`,
c2.Country AS `País`,
(COUNT(c2.Country) - 1) AS `Número de compatriotas`
FROM customers AS c1,
customers AS c2
WHERE c1.Country = c2.Country
GROUP BY `País`, `Nome`
HAVING `Número de compatriotas` > 0
ORDER BY `Nome`;
