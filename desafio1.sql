SELECT 
    c.COUNTRY_NAME 'País',
    IF(r.REGION_ID = 1,
        'incluido',
        'não incluido') 'Status Inclusão'
FROM
    hr.countries c
        INNER JOIN
    hr.regions r ON c.REGION_ID = r.REGION_ID;
