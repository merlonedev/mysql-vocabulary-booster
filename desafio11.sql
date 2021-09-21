SELECT 
    c.contactName AS `Nome`,
    c.country AS `País`,
    COUNT(c.country) AS `Número de compatriotas`
FROM
    w3schools.customers AS c
        JOIN
    w3schools.customers AS co ON c.country = co.country
        AND c.customerID <> co.customerId
GROUP BY `Nome` , c.country
ORDER BY `Nome`;
