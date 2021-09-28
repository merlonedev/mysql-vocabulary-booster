SELECT DISTINCT
    c.Country AS 'País'
FROM
    w3schools.customers as c
    join
    w3schools.suppliers as s
    where c.Country = s.Country
    order by c.Country
    limit 5;
    