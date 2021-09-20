SELECT 
    countries.COUNTRY_NAME as countries, regions.REGION_NAME as `Status Inclusão`
FROM
    hr.countries AS countries
        INNER JOIN
    hr.regions AS regions ON countries.REGION_ID = regions.REGION_ID;
