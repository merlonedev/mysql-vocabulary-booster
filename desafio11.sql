SELECT 
    ContactName AS 'Nome',
    Country AS 'País',
    (SELECT 
            COUNT(*) - 1
        FROM
            customers AS t2
        WHERE
            t1.Country = t2.Country) AS 'Número de compatriotas'
FROM
    customers AS t1
    HAVING `Número de compatriotas` > 0
ORDER BY Nome;
