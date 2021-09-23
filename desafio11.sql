SELECT
  ContactName AS "Nome",
  Country  AS "País",
  (SELECT COUNT(ContactName) FROM w3schools.customers)
FROM w3schools.customers
GROUP BY Country
HAVING COUNT(ContactName) > 1
ORDER BY Country;
