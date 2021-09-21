SELECT *  FROM hr.countries;
SELECT * FROM hr.regions;

SELECT 
    c.country_name AS 'País',
    CASE
        WHEN r.region_name = 'Europe' THEN 'incluído'
        ELSE 'não incluído'
    END 'Status Inclusão'
FROM
    hr.countries AS c
        INNER JOIN
    hr.regions AS r
ORDER BY c.country_name;
