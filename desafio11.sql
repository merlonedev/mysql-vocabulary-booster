SELECT 
    c1.ContactName AS 'Nome',
    c1.Country AS 'País',
    COUNT(c2.Country) AS 'Número de compatriotas'
FROM
    customers AS c1,
    customers AS c2
WHERE
    c1.Country = c2.Country
        AND c1.CustomerID <> c2.CustomerID
GROUP BY Nome , País
ORDER BY Nome;
