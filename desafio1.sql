SELECT hr.countries.COUNTRY_NAME AS 'País',
CASE
	WHEN hr.countries.REGION_ID = 1 THEN 'incluído'
    ELSE 'não incluído'
END AS 'Status Inclusão'
FROM hr.countries;
