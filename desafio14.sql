SELECT 
    sub.Country AS País
FROM
    (SELECT DISTINCT
        country
    FROM
        customers UNION ALL SELECT DISTINCT
        country
    FROM
        suppliers
    ORDER BY COUNTRY
    LIMIT 5) sub;
