SELECT 
    customers1.ContactName AS 'Nome',
    customers1.Country AS 'País',
    (SELECT 
            COUNT(*) - 1
        FROM
            w3schools.customers AS customers2
        WHERE
            customers2.Country = customers1.Country) AS 'Número de compatriotas'
FROM
    w3schools.customers AS customers1
WHERE
    (SELECT 
            COUNT(*) - 1
        FROM
            w3schools.customers AS customers2
        WHERE
            customers2.Country = customers1.Country) > 0
ORDER BY Nome;
