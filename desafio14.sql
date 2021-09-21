SELECT Sub.Country AS 'País' FROM 
(SELECT DISTINCT Country FROM w3schools.customers
UNION ALL SELECT DISTINCT Country FROM w3schools.suppliers
ORDER BY Country LIMIT 5) AS Sub;