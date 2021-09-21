SELECT 
    a.ContactName AS Nome,
    a.Country AS País,
    COUNT(b.Country) - 1 AS `Número de compatriotas`
FROM
    customers AS a
        JOIN
    customers AS b ON a.Country = b.Country
GROUP BY a.ContactName , a.Country
HAVING `Número de compatriotas` >= 1
ORDER BY a.ContactName;
