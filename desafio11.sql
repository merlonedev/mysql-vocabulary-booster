SELECT 
    C1.ContactName 'Nome',
    C1.Country AS 'País',
    (SELECT 
            COUNT(*) - 1
        FROM
            w3schools.customers AS C2
        WHERE
            C1.Country = C2.Country
        GROUP BY C2.Country) AS 'Número de compatriotas'
FROM
    w3schools.customers AS C1
WHERE
    (SELECT 
            COUNT(*) - 1
        FROM
            w3schools.customers AS C2
        WHERE
            C1.Country = C2.Country
        GROUP BY C2.Country) > 0
ORDER BY C1.ContactName ASC;
