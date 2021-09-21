SELECT
    s.Country AS 'País'
FROM
    (SELECT DISTINCT
        Country
    FROM
        w3schools.suppliers UNION ALL 
	SELECT DISTINCT
        Country
    FROM
        w3schools.customers
    ORDER BY Country
    LIMIT 5) AS s;
