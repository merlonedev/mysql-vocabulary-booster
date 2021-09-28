SELECT 
    C1.ContactName AS `Nome`,
    C1.Country AS `País`,
    COUNT(*) - 1 AS `Número de compatriotas`
FROM
    w3schools.customers AS C1,
    customers AS C2
WHERE
    C1.Country = C2.Country
GROUP BY C1.ContactName , C2.Country
HAVING `Número de compatriotas` > 0
ORDER BY `Nome`;
