(SELECT DISTINCT Country FROM suppliers)
UNION
(SELECT DISTINCT Country FROM customers)
ORDER BY Country LIMIT 5;
