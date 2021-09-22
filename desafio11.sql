SELECT 
    c.ContactName Nome,
    c.Country País,
    COUNT(c.Country) 'Número de compatriotas'
FROM
    w3schools.customers c,
    w3schools.customers c1
WHERE
    c1.Country = c.Country
        AND c1.CustomerID <> c.CustomerID
GROUP BY c.CustomerID
ORDER BY c.ContactName;
