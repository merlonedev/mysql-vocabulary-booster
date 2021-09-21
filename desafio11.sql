SELECT 
    c.ContactName AS 'Nome de contato',
    c.Country AS País,
    (SELECT 
            COUNT(*) - 1
        FROM
            w3schools.customers
        WHERE
            Country = c.Country) AS 'Número de compatriotas'
FROM
    w3schools.customers AS c
WHERE
    (SELECT 
            COUNT(*) - 1
        FROM
            w3schools.customers
        WHERE
            Country = c.Country) > 0
ORDER BY `Nome de contato`;
