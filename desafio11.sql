SELECT ContactName AS `Nome`,
  Country AS `País`,
  (SELECT COUNT(*) - 1
   FROM w3schools.customers AS C1
   WHERE C.Country = C1.Country
   GROUP BY Country
  ) AS `Número de compatriotas`
FROM w3schools.customers AS C
WHERE (SELECT COUNT(*) - 1
   FROM w3schools.customers AS C1
   WHERE C.Country = C1.Country
   GROUP BY Country
  ) > 0
ORDER BY `Nome`;
