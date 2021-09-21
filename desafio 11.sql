SELECT coutr1.CustomerName AS 'Nome', coutr1.Country AS 'País', COUNT(coutr1.Country) - 1 AS 'Número de compatriotas'
from w3schools.customers AS coutr1, w3schools.customers AS coutr2
WHERE coutr1.Country = coutr2.Country
GROUP BY `Nome`
HAVING `Número de compatriotas` > 0 
ORDER BY `Nome`;
