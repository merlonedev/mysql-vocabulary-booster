SELECT cn.ContactName AS 'Nome',
cn.country AS 'País',
COUNT(c.Country) - 1 AS 'Número de compatriotas' 
FROM customers AS cn, customers AS c
WHERE cn.Country = c.Country
GROUP BY cn.ContactName, c.Country
HAVING COUNT(c.Country) - 1 > 0
ORDER BY cn.ContactName;
