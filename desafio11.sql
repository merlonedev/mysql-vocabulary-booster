SELECT contactName 'Nome', country 'País',
(SELECT COUNT(country) - 1  FROM w3schools.customers
WHERE c.country = country) 'Número de compatriotas'
FROM w3schools.customers c
HAVING `Número de compatriotas` > 0
ORDER BY `Nome`;
