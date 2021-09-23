SELECT 
    ContactName AS 'Nome',
    Country AS 'País',
    (select count(*) - 1 from customers as c2 where c1.Country = c2.Country) as 'Número de compatriotas'
FROM
    customers as c1 
having `Número de compatriotas` > 0
ORDER BY ContactName;
