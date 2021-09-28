SELECT 
    customers1.ContactName AS Nome,
    customers1.Country AS País,
    COUNT(customers2.Country) AS `Número de compatriotas`
FROM
    w3schools.customers AS customers1,
    w3schools.customers AS customers2
WHERE
    customers2.Country = customers1.Country
        AND customers2.ContactName <> customers1.ContactName
GROUP BY customers1.ContactName , customers1.Country
ORDER BY customers1.ContactName ASC
