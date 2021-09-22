SELECT
    c1.ContactName AS 'Nome',
    c1.Country AS 'País',
    (SELECT
            COUNT(c2.Country) - 1 AS total
        FROM
            customers AS c2
        WHERE
            c1.Country = c2.Country) AS 'Número de compatriotas'
FROM
    customers AS c1
WHERE
    (SELECT
            COUNT(c2.Country) - 1 AS total
        FROM
            customers AS c2
        WHERE
            c1.Country = c2.Country) > 0
ORDER BY Nome;
