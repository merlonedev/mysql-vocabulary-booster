SELECT 
    c1.ContactName AS 'Nome',
    c1.Country AS 'País',
    COUNT(c1.Country) - 1 AS 'Número de compatriotas'
FROM
    w3schools.customers AS c1,
    w3schools.customers AS c2
WHERE
    c1.Country = c2.Country
GROUP BY c1.ContactName
ORDER BY c1.Country;
