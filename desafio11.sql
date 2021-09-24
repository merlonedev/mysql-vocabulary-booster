SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));

SELECT
    ContactName AS `Nome`,
    Country AS `País`,
    COUNT(*) - 1 `Número de compatriotas`
FROM
    w3schools.customers
GROUP BY `País`
ORDER BY `Nome`;

