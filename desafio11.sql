SELECT 
    c1.ContactName AS `Nome`,
    c1.Country AS `País`,
    COUNT(c2.ContactName) - 1 AS `Número de compatriotas`
FROM
    customers as c1, customers as c2
WHERE c1.Country = c2.Country
GROUP BY c1.ContactName
ORDER BY c1.ContactName;
