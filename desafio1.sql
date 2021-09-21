SELECT
    c.COUNTRY_NAME 'País',
    if(r.REGION_NAME = 'Europe', 'incluído', 'não incluído' ) 'Status Inclusão'
FROM
    hr.countries c
INNER JOIN
	hr.regions r ON r.REGION_ID = c.REGION_ID
ORDER BY
	c.COUNTRY_NAME ASC
