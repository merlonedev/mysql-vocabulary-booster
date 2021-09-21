SELECT c.COUNTRY_NAME as 'País', IF (r.REGION_NAME = 'Europe', 'incluído', 'não incluído' ) as `Status Inclusão` from
countries AS c
JOIN
regions AS r
ON
	c.REGION_ID = r.REGION_ID
ORDER BY c.COUNTRY_NAME;
