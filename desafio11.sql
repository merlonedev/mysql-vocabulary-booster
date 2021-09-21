SELECT 
    ContactName AS Nome,
    Country AS País,
    (SELECT 
            (COUNT(Country) - 1)
        FROM
            w3schools.customers
        WHERE
            Country = t2.Country) AS 'Número de compatriotas'
FROM
    w3schools.customers AS t2
HAVING `Número de compatriotas` > 0
ORDER BY 1;
