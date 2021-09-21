SELECT C1.ContactName AS 'Nome',C1.Country AS 'País',
COUNT(C2.CustomerID) AS 'Número de compatriotas'
FROM w3schools.customers AS C1
INNER JOIN w3schools.customers AS C2
ON C2.Country = C1.Country
AND C2.CustomerID <> C1.CustomerID
GROUP BY C1.CustomerID
ORDER BY C1.ContactName;
