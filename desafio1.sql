SELECT 
    COUNTRY_NAME AS País,
    IF(REGION_ID = 1,
        'Incluido',
        'Não incluido') AS 'Status Inclusão'
FROM
    hr.countries;
