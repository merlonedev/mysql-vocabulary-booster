SELECT 
    CS1.ContactName AS 'Nome',
    CS1.Country AS 'País',
    COUNT(CS1.Country) AS 'Número de compatriotas'
FROM
    w3schools.customers AS CS1,
    w3schools.customers AS CS2
WHERE
    CS1.Country = CS2.Country
        AND CS1.CustomerID <> CS2.CustomerID
GROUP BY CS1.ContactName, CS1.Country
ORDER BY Nome;
