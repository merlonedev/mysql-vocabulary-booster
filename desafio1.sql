SELECT
	c.COUNTRY_NAME AS `País`,
    IF ((SELECT
		REGION_NAME
	FROM
		hr.regions AS r
	WHERE
		c.REGION_ID = r.REGION_ID) = 'Europe', 'incluído', 'não incluído') AS `Status Inclusão`
FROM
	hr.countries AS c
ORDER BY `País`;
