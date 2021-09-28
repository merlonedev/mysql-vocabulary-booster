SELECT
  t1.ContactName AS `Nome`,
  t1.Country AS `País`,
  COUNT(t2.ContactName) AS `Número de compatriotas`
FROM
  customers AS t1,
  customers AS t2
WHERE
  t1.Country = t2.Country
  AND t1.ContactName <> t2.ContactName
GROUP BY
  t1.ContactName;
