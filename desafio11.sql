SELECT
  c.ContactName AS "Nome",
  c.Country  AS "País",
  (SELECT COUNT(*) FROM w3schools.customers WHERE c.Country = Country) -1  AS 'Número de compatriotas'
FROM w3schools.customers AS c
WHERE (SELECT COUNT(*) FROM w3schools.customers WHERE c.Country = Country) > 1
ORDER BY c.ContactName
