SELECT
C.Country AS `País`
FROM w3schools.customers C
UNION
SELECT
S.Country AS `País`
FROM w3schools.suppliers S
ORDER BY `País`
LIMIT 5;
