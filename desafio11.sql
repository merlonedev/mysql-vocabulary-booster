SELECT 
    c.ContactName AS `Nome`,
    c.Country AS `País`,
    (SELECT 
            COUNT(*) - 1
        FROM
            customers AS c2
        WHERE
            c.Country = c2.Country) AS `Número de compatriotas`
FROM
    customers AS c
WHERE
    (SELECT 
            COUNT(*) - 1
        FROM
            customers AS c2
        WHERE
            c.Country = c2.Country) > 0
GROUP BY c.ContactName , c.Country
ORDER BY c.ContactName
