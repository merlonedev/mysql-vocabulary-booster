SELECT 
    um.ContactName AS `Nome`,
    um.Country AS `País`,
    COUNT(*) AS `Número de compatriotas`
FROM
    customers AS um,
    customers AS dois
WHERE
    um.Country = dois.Country
        AND um.CustomerID <> dois.CustomerID
GROUP BY um.ContactName
ORDER BY um.ContactName ASC;
