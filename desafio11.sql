SELECT 
    customer.ContactName AS 'Nome',
    customer.Country AS 'País',
    (SELECT COUNT(*) FROM w3schools.customers WHERE customer.country = country) - 1 AS 'Número de compatriotas'
FROM
    w3schools.customers AS customer
WHERE
    (SELECT COUNT(*) FROM w3schools.customers WHERE customer.country = country) - 1 > 0
ORDER BY customer.ContactName;
