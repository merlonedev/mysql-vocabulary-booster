SELECT 
    customers1.ContactName AS 'Nome',
    customers1.Country AS 'País',
    COUNT(customers2.Country) AS 'Número de compatriotas'
FROM
    w3schools.customers AS customers1,
    w3schools.customers AS customers2
WHERE
    customers1.Country = customers2.Country and customers1.ContactName <> customers2.ContactName
GROUP BY customers1.ContactName
ORDER BY customers1.ContactName ASC;
