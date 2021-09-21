SELECT C.ContactName AS 'Nome',
C.Country AS 'País',
COUNT(C.Country) - 1 AS 'Número de compatriotas'
FROM w3schools.customers AS C, w3schools.customers AS C1
WHERE C1.Country = C.Country
GROUP BY Nome, País
HAVING `Número de compatriotas` > 0
ORDER BY Nome
;