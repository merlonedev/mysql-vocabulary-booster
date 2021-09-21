SELECT 
    A.ContactName AS 'Nome',
    A.Country AS 'País',
    COUNT(*) AS 'Número de compatriotas'
FROM
    customers A,
    customers B
WHERE
    A.Country = B.Country
        AND A.CustomerID <> B.CustomerID
GROUP BY A.ContactName
ORDER BY A.ContactName ASC;
