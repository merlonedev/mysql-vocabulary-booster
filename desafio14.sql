SELECT 
    sub.country AS 'País'
FROM
    (SELECT DISTINCT
        country
    FROM
        customers UNION ALL SELECT DISTINCT
        country
    FROM
        suppliers
    ORDER BY country
    LIMIT 5) sub;
