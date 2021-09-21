SELECT 
    c1.contactName `Nome`,
    c1.country AS `País`,
    (SELECT 
            COUNT(*) - 1
        FROM
            w3schools.customers AS c2
        WHERE
            c1.country = c2.country
        GROUP BY c2.country) AS `Número de compatriotas`
FROM
    w3schools.customers AS c1
WHERE
    (SELECT 
            COUNT(*) - 1
        FROM
            w3schools.customers AS c2
        WHERE
            c1.country = c2.country
        GROUP BY c2.country) > 0
ORDER BY `Nome`;
