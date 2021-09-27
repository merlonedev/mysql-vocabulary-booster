SELECT 
    c.ContactName AS 'Nome',
    c.country AS 'País',
    (SELECT 
            (COUNT(country) - 1)
        FROM
            customers
        WHERE
            country = c.country) AS 'Número de compatriotas'
FROM
    customers AS c
ORDER BY `Nome`;
