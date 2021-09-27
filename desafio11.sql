SELECT 
    t1.ContactName AS 'Nome',
    t1.Country AS 'País',
    COUNT(t2.Country) AS 'Número de compatriotas'
FROM
    customers AS t1,
    customers AS t2
WHERE
    t1.Country = t2.Country
        AND t.CustomerID <> t2.CustomerID
GROUP BY Nome
ORDER BY Nome;
