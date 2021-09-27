SELECT 
    c.ContactName AS 'Nome',
    c.Country AS 'País',
    (SELECT 
            COUNT(*)
        FROM
            customers
        WHERE
            c.country = country) - 1 AS 'Número de compatriotas'
FROM
    w3schools.customers AS c1
HAVING `Número de compatriotas` > 0
ORDER BY ContactName;
