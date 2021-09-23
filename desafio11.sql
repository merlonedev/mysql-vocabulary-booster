SELECT 
    C.ContactName AS 'Nome',
    C.Country AS 'País',
    COUNT(C.Country) AS 'Número de compatriotas'
FROM
    w3schools.customers AS C,
    w3schools.customers AS C2
WHERE
    C.Country = C2.Country
        AND C.CustomerID <> C2.CustomerID
GROUP BY C.CustomerID
ORDER BY C.ContactName;
