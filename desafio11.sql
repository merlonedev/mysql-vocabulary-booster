SELECT 
    t1.CustomerName AS `Nome`,
    t1.Country AS `País`,
    COUNT(t2.CustomerID) AS `Número de compatriotas`
FROM
    customers AS t1, customers AS t2
WHERE t1.Country = t2.Country AND t1.CustomerID <> t2.CustomerID
GROUP BY `Nome`
ORDER BY `Nome`;
