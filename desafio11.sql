SELECT T1.ContactName AS 'Nome',
T1.country AS 'País',
COUNT(T2.Country) - 1 AS 'Número de compatriotas' 
FROM customers AS T1, customers AS T2
WHERE T1.Country = T2.Country
GROUP BY T1.ContactName, T2.Country
HAVING COUNT(T2.Country) > 0
ORDER BY T1.ContactName ASC;
