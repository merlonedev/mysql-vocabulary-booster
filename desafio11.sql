SELECT 
    c.ContactName AS 'Nome',
    c.Country AS 'País',
    (sub.Qnt - 1) AS 'Número de compatriotas'
FROM
    (SELECT 
        Country, COUNT(*) AS 'Qnt'
    FROM
        w3schools.customers
    GROUP BY (Country)) AS sub
        INNER JOIN
    w3schools.customers AS c ON c.Country = sub.Country
WHERE
    (sub.Qnt - 1) > 0
ORDER BY 1;
