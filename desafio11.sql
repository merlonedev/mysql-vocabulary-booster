SELECT customers1.ContactName AS `Nome`,
customers1.Country AS `País`,
COUNT(*) AS `Número de compatriotas`
FROM w3schools.customers AS customers1, w3schools.customers AS customers2
WHERE customers1.Country = customers2.Country
AND customers1.CustomerID <> customers2.CustomerID
GROUP BY customers1.CustomerID
ORDER BY customers1.ContactName;
