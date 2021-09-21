SELECT
  COUNTRY_NAME AS 'País',
  IF(REGION_ID = 1, 'incluído', 'não incluído') AS 'Status Inclusão'
FROM
  hr.countries
ORDER BY
  COUNTRY_NAME;

SELECT
  c.COUNTRY_NAME AS 'País',
  CASE
    WHEN r.REGION_NAME = 'Europe' THEN 'incluído'
    ELSE 'não incluído'
  END AS 'Status Inclusão'
FROM
  countries c
  INNER JOIN regions r ON c.REGION_ID = r.REGION_ID
ORDER BY
  c.COUNTRY_NAME;