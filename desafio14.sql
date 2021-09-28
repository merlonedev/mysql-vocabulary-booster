SELECT
C.Country AS `País`
FROM
((SELECT Country FROM w3schools.customers)
UNION
(SELECT Country FROM w3schools.suppliers)) AS C
ORDER BY Country
LIMIT 5;
