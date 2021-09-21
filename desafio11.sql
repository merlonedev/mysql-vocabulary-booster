SELECT 
    c.ContactName AS `Nome`,
    c.Country AS `País`,
    (SELECT 
            COUNT(*) - 1
        FROM
            w3schools.customers cu
        WHERE
            cu.Country = c.Country) AS `Número de compatriotas`
FROM
    w3schools.customers c
HAVING `Número de compatriotas` > 0
ORDER BY c.ContactName ASC;
