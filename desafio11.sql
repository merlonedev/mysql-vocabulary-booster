SELECT
ContactName AS `Nome`,
Country AS `País`,
(SELECT COUNT(Country) - 1 FROM w3schools.customers WHERE Country = `País`) AS `Número de compatriotas`
FROM w3schools.customers
ORDER BY `Nome`;
