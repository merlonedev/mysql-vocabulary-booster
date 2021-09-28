SELECT DISTINCT
    c.Country AS 'País'
FROM
    w3schools.customers AS c
    union
SELECT DISTINCT
    s.Country AS 'País'
FROM
    w3schools.suppliers AS s
order by `País`
limit 5;
