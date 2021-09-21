SELECT 
    COUNTRY_NAME,
    CASE
        WHEN REGION_ID <> 1 THEN 'não incluído'
        ELSE 'incluído'
    END AS `Status Inclusão`
FROM
    hr.countries
ORDER BY COUNTRY_NAME
