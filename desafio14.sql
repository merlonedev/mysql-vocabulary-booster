(SELECT DISTINCT
    customers.Country AS `País`
FROM
    customers UNION (SELECT 
    DISTINCT Country AS `País`
FROM
    suppliers
ORDER BY `País` ASC LIMIT 5;

