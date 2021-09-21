SELECT CTRY.COUNTRY_NAME AS 'País', IF(CTRY.REGION_ID = 1, 'incluido', 'não incluido') AS 'Status Inclusão' FROM hr.countries AS CTRY
ORDER BY `País`;
