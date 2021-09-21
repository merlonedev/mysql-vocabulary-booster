SELECT 
    *
FROM
    (SELECT DISTINCT
        Country AS `País`
    FROM
        w3schools.customers
    ORDER BY Country ASC
    LIMIT 5) c 
UNION SELECT 
    *
FROM
    (SELECT DISTINCT
        Country AS `País`
    FROM
        w3schools.suppliers
    ORDER BY Country ASC
    LIMIT 5) s
ORDER BY `País` ASC
LIMIT 5;
