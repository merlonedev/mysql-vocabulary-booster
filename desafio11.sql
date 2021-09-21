SELECT 
    c.ContactName AS 'Nome',
    c.Country AS 'País',
    COUNT(c.Country) AS 'Número de compatriotas'
FROM
    w3schools.customers AS c,
    w3schools.customers AS compare
WHERE
    c.Country = compare.Country
        AND c.CustomerID <> compare.CustomerID
GROUP BY `Nome` , `País`
ORDER BY `Nome` ASC;
