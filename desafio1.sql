SELECT 
    c.COUNTRY_NAME AS 'País', if(c.region_id = '1', 'incluído', 'não incluído') AS 'Status Inclusão'
FROM
    hr.countries AS c
        INNER JOIN
    hr.regions AS r ON c.region_id = r.REGION_ID
ORDER BY c.COUNTRY_NAME;
