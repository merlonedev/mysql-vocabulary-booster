SELECT 
    c.country_name AS 'País',
    IF(region_name = 'Europe',
        'incluído',
        'não incluído') AS 'Status Inclusão'
FROM
    hr.countries AS c
        JOIN
    regions AS r ON c.region_id = r.region_id
ORDER BY country_name;
