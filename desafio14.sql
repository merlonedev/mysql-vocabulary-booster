SELECT
    Country AS 'País'
FROM
    (SELECT
        Country
    FROM
        customers UNION SELECT
        Country
    FROM
        suppliers) AS result
ORDER BY País
LIMIT 5;
