SELECT
ContactName AS `Nome`,
Country AS `País`,
(SELECT COUNT(CustomerID) - 1 FROM w3schools.customers GROUP BY Country HAVING Country = `País`) AS `Número de compatriotas`
FROM w3schools.customers
HAVING `Número de compatriotas` > 0
ORDER BY `Nome`;
