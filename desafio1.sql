SELECT 
    c.COUNTRY_NAME AS 'País',
    IF(r.REGION_NAME = 'Europe',
        'incluido',
        'não incluido') AS 'Status Inclusão'
FROM
    countries c
        JOIN
    regions r ON c.REGION_ID = r.REGION_ID
ORDER BY c.COUNTRY_NAME;
