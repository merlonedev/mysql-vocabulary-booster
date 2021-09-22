SELECT C.COUNTRY_NAME AS `País`,
IF(r.REGION_NAME = "Europe", "incluido", "não incluido") AS `Status Inclusão`
FROM 
hr.countries AS C
JOIN 
hr.regions AS r ON r.REGION_ID = C.REGION_ID
ORDER BY C.COUNTRY_NAME;
