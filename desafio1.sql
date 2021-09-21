SELECT COUNTRY_NAME AS 'País', IF(REGION_ID = 1, 'incluido', 'não incluido') as 'Status Inclusão' from hr.countries
ORDER BY `País`;
