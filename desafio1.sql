SELECT 
    c.country_name AS 'País',
    CASE
        WHEN r.region_name = 'Europe' THEN 'incluído'
        ELSE 'não incluído'
    END AS 'Status Inclusão'
FROM
    hr.countries AS c
        INNER JOIN
    hr.regions AS r ON c.region_id = r.region_id
ORDER BY c.country_name;
