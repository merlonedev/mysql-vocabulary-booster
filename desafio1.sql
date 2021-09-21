SELECT  
  countries.COUNTRY_NAME AS `País`,
  IF(regions.REGION_NAME = 'EUROPE','incluído','não incluído') AS `Status Inclusão`
FROM
  hr.countries AS countries INNER JOIN regions AS regions ON countries.REGION_ID = regions.REGION_ID
ORDER BY COUNTRY_NAME ASC;