SELECT 
    hr.countries.COUNTRY_NAME AS 'País',
    IF(hr.countries.REGION_ID = 1,
        'incluído',
        'não incluído') AS 'Status Inclusão'
FROM
	hr.countries
ORDER BY País;
