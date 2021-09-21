SELECT 
    c.ContactName AS 'Nome',
    c.Country AS 'País',
    COUNT(c2.Country) AS 'Número de compatriotas'
FROM
    w3schools.customers AS c,
    w3schools.customers AS c2
WHERE
    c.Country = c2.Country
        AND c.CustomerID <> c2.CustomerID
GROUP BY Nome , País
ORDER BY Nome;
