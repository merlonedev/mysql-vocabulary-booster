SELECT 
    customers.ContactName AS Nome,
    customers.Country AS País,
    (SELECT 
            COUNT(customersCount.Country) - 1
        FROM
            w3schools.customers AS customersCount
        GROUP BY customersCount.Country
        HAVING customers.Country = customersCount.Country) AS `Número de compatriotas`
FROM
    w3schools.customers
    WHERE (SELECT 
            COUNT(customersCount.Country) - 1
        FROM
            w3schools.customers AS customersCount
        GROUP BY customersCount.Country
        HAVING customers.Country = customersCount.Country) > 0
ORDER BY customers.ContactName;
