SELECT DISTINCT
cust.ContactName AS 'Nome',
cust.Country AS 'País',
COUNT(cust.Country) - 1 AS 'Número de compatriotas'
FROM w3schools.customers AS cust, w3schools.customers AS cou
WHERE cust.Country = cou.Country
GROUP BY cust.ContactName, cust.Country
HAVING COUNT(cust.Country) - 1 <> 0
ORDER BY cust.ContactName;
