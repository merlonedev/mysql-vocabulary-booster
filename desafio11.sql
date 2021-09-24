SELECT
    ContactName AS `Nome`,
    Country AS `País`,
    COUNT(*) - 1 `Número de compatriotas`
FROM
    w3schools.customers
GROUP BY `País`
ORDER BY `Nome`;
