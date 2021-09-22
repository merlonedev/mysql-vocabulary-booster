SELECT 
    t1.ContactName AS Nome,
    t1.Country AS País,
    (COUNT(t1.Country) - 1) AS `Número de compatriotas`
FROM
    w3schools.customers AS t1,
    w3schools.customers AS t2
WHERE
    t1.country = t2.country
GROUP BY País , Nome
HAVING `Número de compatriotas` > 1
ORDER BY Nome;
