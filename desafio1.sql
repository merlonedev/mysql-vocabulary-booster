SELECT 
    COUNTRY_NAME AS 'País',
    CASE
        WHEN region_id = 1 THEN 'incluído'
        ELSE 'não incluído'
    END AS 'Status Inclusão'
FROM
    countries AS c
ORDER BY COUNTRY_NAME ASC;
