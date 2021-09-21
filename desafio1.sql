SELECT
  c.COUNTRY_NAME AS 'País',
  IF (r.REGION_NAME = 'Europe', 'incluído', 'não incluído') AS 'Status Inclusão'
FROM countries c
JOIN regions r ON c.REGION_ID = r.REGION_ID
ORDER BY c.COUNTRY_NAME;
