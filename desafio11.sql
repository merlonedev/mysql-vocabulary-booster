SELECT 
    c1.ContactName AS 'Nome',
    c1.Country AS 'País',
    COUNT(c1.Country) - 1 AS 'Número de compatriotas'    
FROM
    customers AS c1,
    customers AS c2
WHERE
    c1.Country = c2.Country
GROUP BY Nome , País
HAVING `Número de compatriotas` > 0
ORDER BY c1.ContactName
