SELECT c1.ContactName AS `Nome`, c1.country AS `País`,
(SELECT COUNT(country)
FROM w3schools.customers
GROUP BY country
HAVING country = c1.country) - 1 AS `Número de compatriotas`
FROM w3schools.customers AS c1
WHERE (SELECT COUNT(country)
FROM w3schools.customers
GROUP BY country
HAVING country = c1.country) - 1 > 0
ORDER BY c1.ContactName;
