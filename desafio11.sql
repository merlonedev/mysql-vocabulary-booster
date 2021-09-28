use w3schools;
SELECT 
    ContactName AS 'Nome',
    Country AS `País`,
    (SELECT 
            COUNT(Country) - 1
        FROM
            customers
        WHERE
            Country = `País`) AS `Número de compatriotas`
FROM
    customers
HAVING `Número de compatriotas` > 0
ORDER BY ContactName;
