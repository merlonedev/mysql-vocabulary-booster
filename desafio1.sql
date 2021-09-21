SELECT CTRY.COUNTRY_NAME AS 'País', IF(CTRY.REGION_ID = 1, 'incluído', 'não incluído') AS 'Status Inclusão' FROM hr.countries AS CTRY
ORDER BY `País`;
