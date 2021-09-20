SELECT 
    countries.COUNTRY_NAME as País,
    IF(regions.REGION_NAME = 'Europe', 'incluído', 'não incluído')as `Status Inclusão`
FROM
    hr.countries AS countries
        INNER JOIN
    hr.regions AS regions ON countries.REGION_ID = regions.REGION_ID
ORDER BY País;
