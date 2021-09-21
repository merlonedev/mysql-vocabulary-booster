SELECT 
    cust1.ContactName AS `Nome`,
    cust1.Country AS `País`,
    (SELECT 
            COUNT(Country) - 1
        FROM
            w3schools.customers
        GROUP BY Country
        HAVING Country = cust1.Country) AS `Número de compatriotas`
FROM
    w3schools.customers AS cust1
WHERE (SELECT 
            COUNT(Country)
        FROM
            w3schools.customers
        GROUP BY Country
        HAVING Country = cust1.Country) - 1 > 0
ORDER BY `Nome`;
