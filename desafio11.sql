SELECT 
c.Contactname AS Nome,
c.Country AS País,
COUNT(c.Country) AS 'Número de compatriotas'
FROM w3schools.customers AS c, w3schools.customers AS cc
WHERE c.country = cc.country
AND c.CustomerID <> cc.CustomerID
GROUP BY c.CustomerID
ORDER BY c.ContactName;
