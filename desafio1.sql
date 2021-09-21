SELECT 
    COUNTRY_NAME,
    CASE
        WHEN REGION_ID = 1 THEN 'Europe'
        ELSE 'não incluído'
    END AS 'Status Inclusão'
FROM
    hr.countries
ORDER BY COUNTRY_NAME;
