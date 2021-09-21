SELECT
  C.COUNTRY_NAME AS `País`,
  (
    SELECT
      IF (R.REGION_NAME = 'Europe', 'incluído', 'não incluído')
    FROM
      hr.regions AS R
    WHERE
      R.REGION_ID = C.REGION_ID
  ) AS `Status Inclusão`
FROM
  hr.countries AS C
ORDER BY
  `País`;
