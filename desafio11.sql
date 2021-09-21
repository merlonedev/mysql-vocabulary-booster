SELECT 
    cust1.ContactName AS `Nome`,
    cust1.Country AS `País`,
    COUNT(cust2.Country) - 1 AS `Número de compatriotas`
FROM
    w3schools.customers AS cust1
	INNER JOIN w3schools.customers AS cust2 ON cust2.Country = cust1.Country
GROUP BY `Nome`
HAVING COUNT(cust2.Country) - 1 >  0
ORDER BY `Nome`;
