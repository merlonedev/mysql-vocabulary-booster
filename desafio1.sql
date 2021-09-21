SELECT 
    COUNTRY_NAME AS 'País',
    (SELECT 
            IF(REGION_ID = 1,
                    'Incluído',
                    'Não incluído')
        ) AS 'Status Inclusão'
FROM
    hr.countries;
