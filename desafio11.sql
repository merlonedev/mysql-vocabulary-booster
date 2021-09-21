SELECT 
customers.ContactName AS "Nome",
customers.Country AS "País",
COUNT(customers.Country) AS "Número de compatriotas"
FROM w3schools.customers AS customers,
w3schools.customers AS compare_customers
WHERE customers.country = compare_customers.country
AND customers.CustomerID <> compare_customers.CustomerID
GROUP BY customers.ContactName, customers.Country
ORDER BY Nome ASC;
