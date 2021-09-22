SELECT 
    COUNTRY_NAME AS `País`,
    (SELECT 
            IF(REGION_ID = 1,
                    'incluído',
                    'não incluído')
        ) AS 'Status Inclusão'
FROM
    hr.countries
ORDER BY `País`;
