SELECT 
    c.ContactName AS 'Nome',
    c.Country AS 'País',
    COUNT(*) - 1 AS 'Número de compatriotas'
FROM
    w3schools.customers AS c
        JOIN
    w3schools.customers AS c2 ON c.Country = c2.Country
GROUP BY c.ContactName , c.Country
HAVING `Número de compatriotas` > 0
ORDER BY c.ContactName;
