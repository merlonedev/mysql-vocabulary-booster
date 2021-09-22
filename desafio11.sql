SELECT
    C2.ContactName AS 'Nome',
    C2.Country AS 'País',
    COUNT(C1.Country) AS 'Número de compatriotas'
FROM
    w3schools.customers AS C1,
    w3schools.customers AS C2
WHERE
    C1.Country = C2.Country
        AND C1.ContactName <> C2.ContactName
GROUP BY C2.ContactName , C2.Country
ORDER BY C2.ContactName
