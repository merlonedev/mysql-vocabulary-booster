SELECT COUNTRY_NAME AS "País", CASE -- o case é lógica pra SEGUNDA tabela(pode ser 'incluído' ou 'não incluído'
WHEN REGION_ID = 1 THEN "incluído" -- A Table regions mostra que region_id=1 é o da europa
ELSE "não incluído"
END AS "Status Inclusão" -- nome dado pra segunda tabela
FROM hr.countries
ORDER BY COUNTRY_NAME;