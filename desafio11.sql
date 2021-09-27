SELECT 
    t1.ContactName AS `Nome`,
    t1.Country AS `País`,
    (t2.cnt - 1) AS `Número de compatriotas`
FROM
    w3schools.customers t1
        INNER JOIN
    (SELECT 
        Country, COUNT(Country) AS cnt
    FROM
        w3schools.customers
    GROUP BY Country) t2 ON t1.Country = t2.Country
ORDER BY Nome;
