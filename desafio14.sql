SELECT DISTINCT
    c.Country AS `País`
FROM
    customers AS c
        INNER JOIN
    suppliers AS s ON c.Country = s.Country
ORDER BY `País`
LIMIT 5;
