SELECT 
    cus.ContactName AS Nome,
    cus.Country AS País,
    (SELECT 
            COUNT(*) - 1
        FROM
            w3schools.customers AS cus2
        WHERE
            cus.Country = cus2.Country) AS 'Número de compatriotas'
FROM
    w3schools.customers cus
WHERE
    EXISTS( SELECT 
            *
        FROM
            customers AS cus2
        WHERE
            cus2.Country = cus.Country
                AND cus2.CustomerID != cus.CustomerID)
ORDER BY Nome ASC;