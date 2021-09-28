SELECT 
    N.ContactName AS `Nome`,
    N.Country AS `País`,
    (C.cnt - 1) AS `Número de compatriotas`
FROM
    w3schools.customers N
        INNER JOIN
    (SELECT 
        Country, COUNT(Country) AS cnt
    FROM
        w3schools.customers
    GROUP BY Country) C ON N.Country = C.Country
    WHERE C.cnt <> 1
ORDER BY Nome;
