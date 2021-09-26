SELECT 
    COUNTRY_NAME as 'País',
    IF (REGION_ID = 1, 'incluido', 'não incluido') as 'Status de Inclusão'
FROM
    hr.countries;
