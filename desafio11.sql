SELECT
    a.ContactName Nome,
    a.Country País,
    COUNT(b.CustomerID) 'Número de compatriotas'
FROM
    w3schools.customers a
        INNER JOIN
    w3schools.customers b ON a.Country = b.Country
        AND a.CustomerID <> b.CustomerID
GROUP BY a.CustomerID
ORDER BY Nome;
