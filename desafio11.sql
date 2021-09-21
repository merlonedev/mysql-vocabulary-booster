SELECT 
    cust1.ContactName AS `Nome`,
    cust1.Country AS `País`,
    COUNT(cust1.Country) - 1 AS `Número de compatriotas`
FROM
    w3schools.customers AS cust1,
    w3schools.customers AS cust2
WHERE cust1.Country = cust2.Country
GROUP BY `Nome`
HAVING COUNT(cust1.Country) - 1 > 0
ORDER BY `Nome`;
