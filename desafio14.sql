SELECT 
    w3schools.customers.Country AS 'País'
FROM
    w3schools.customers 
UNION SELECT 
    w3schools.suppliers.Country AS 'País'
FROM
    w3schools.suppliers
ORDER BY País
LIMIT 5;
