SELECT
a.ContactName AS Nome,
a.Country AS País,
b.`Número de compatriotas`
FROM customers AS a
JOIN (
SELECT
Country, (COUNT(CustomerID) - 1) AS 'Número de compatriotas'
FROM customers
GROUP BY Country
) AS b
ON a.Country = b.Country
WHERE b.`Número de compatriotas` > 0
ORDER BY a.ContactName;
