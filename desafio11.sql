SELECT
  C1.ContactName AS `Nome`,
  C1.Country AS `País`,
  COUNT(C1.country) AS `Número de compatriotas`
FROM w3schools.customers C1, w3schools.customers C2
WHERE C1.country = C2.country AND C1.CustomerID <> C2.CustomerID
GROUP BY C1.Country, C1.ContactName
ORDER BY `Nome`;
