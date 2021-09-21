SELECT 
    c.ContactName AS 'Nome',
    c.Country AS 'País',
    cp.compatriotas AS 'Número de compatriotas'
FROM
    w3schools.customers AS c
        INNER JOIN
    (SELECT 
        COUNT(CustomerID) - 1 AS 'compatriotas', Country
    FROM
        w3schools.customers
    GROUP BY Country) AS cp ON cp.Country = c.Country
WHERE
    cp.compatriotas <> 0
ORDER BY Nome;
