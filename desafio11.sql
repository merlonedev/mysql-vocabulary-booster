SELECT 
    c1.ContactName Nome,
    c1.Country País,
    (SELECT
            COUNT(*) - 1
        FROM
            w3schools.customers c2
        GROUP BY c2.Country
        HAVING c1.Country = c2.Country
        LIMIT 1) `Número de compatriotas`
FROM
    w3schools.customers c1
GROUP BY Nome , País
HAVING `Número de compatriotas` > 0
ORDER BY Nome;
