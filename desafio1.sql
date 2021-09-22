USE hr;
SELECT COUNTRY_NAME AS 'País', IF(REGION_ID = 1, 'inclu[ido', 'não incluído') AS 'Status Inclusão' FROM countries
ORDER BY 'País';
