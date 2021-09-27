(SELECT
Country AS 'País'
FROM 
w3schools.customers LIMIT 5)
UNION 
(SELECT Country
FROM w3schools.suppliers LIMIT 5)
ORDER BY `País` LIMIT 5;
