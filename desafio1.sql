SELECT countries.COUNTRY_NAME AS País,
IF(region.REGION_NAME = 'Europe', 'incluído', 'não incluído') AS 'Status Inclusão'
FROM hr.countries AS countries
JOIN hr.regions AS region
ON countries.REGION_ID = region.REGION_ID
ORDER BY País;
