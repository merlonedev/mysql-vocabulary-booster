SELECT C.COUNTRY_NAME AS `País`,
CASE WHEN R.REGION_NAME = 'Europe' THEN 'incluído' ELSE 'não incluído' END AS `Status Inclusão`
FROM hr.countries C
JOIN hr.regions R
ON C.REGION_ID = R.REGION_ID
ORDER BY C.COUNTRY_NAME;
