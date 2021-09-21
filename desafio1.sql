SELECT 
    c.country_name AS País, -- criar coluna pais
    IF(r.region_name = 'Europe',
        'incluído',
        'não incluído') AS `Status Inclusão` -- cria coluna e verifica se o pais é europeu
FROM
    hr.countries AS c
        JOIN
    hr.regions AS r ON c.region_id = r.region_id
ORDER BY c.country_name;
