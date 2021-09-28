SELECT ContactName AS 'Nome',
Country AS 'País',
(SELECT COUNT(*) - 1
FROM customers AS customers2
WHERE customers1.Country = customers2.Country) AS 'Número de compatriotas'
FROM customers AS customers1
HAVING `Número de compatriotas` > 0
ORDER BY `Nome`;
