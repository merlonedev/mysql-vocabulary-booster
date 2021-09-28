SELECT DISTINCT
    wcust.ContactName AS 'Nome',
    wcust.Country AS 'País',
    COUNT(wcust.Country) - 1 AS 'Número de compatriotas'
FROM
    w3schools.customers AS wcust,
    w3schools.customers AS coun
WHERE
    wcust.Country = coun.Country
GROUP BY wcust.ContactName , wcust.Country
HAVING COUNT(wcust.Country) - 1 <> 0
ORDER BY wcust.ContactName;
