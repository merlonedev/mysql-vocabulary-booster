SELECT 
    ContactName AS `Nome`,
    Country AS `País`,
    (
SELECT COUNT(*) FROM w3schools.customers WHERE Country = `País` AND ContactName <> `Nome`
    ) AS `Número de compatriotas`
FROM
    w3schools.customers as cu
WHERE EXISTS (
SELECT * FROM w3schools.customers WHERE Country = cu.Country AND CustomerID <> cu.CustomerID
)
ORDER BY ContactName ASC;
