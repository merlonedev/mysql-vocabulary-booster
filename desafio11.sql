SELECT 
    c1.ContactName AS Nome,
    c1.Country AS País,
    COUNT(c1.Country) -1 AS 'Número de compatriotas'
FROM
    customers c1,
    customers c2
WHERE
    c1.Country = c2.Country
GROUP BY c1.ContactName
HAVING COUNT(c1.Country) -1 <> 0
ORDER BY c1.ContactName;
