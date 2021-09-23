-- SELECT
-- c1.contactName AS `Nome`,
-- c1.country AS `País`,
-- COUNT(c1.country) AS `Número de compatriotas`
-- FROM
-- w3schools.customers c1, w3schools.customers c2
-- WHERE c1.country = c2.country AND c1.customerID <> c2.customerID
-- GROUP BY `País`, `Nome`
-- ORDER BY `Nome`;

SELECT 
  c1.ContactName AS `Nome`,
  c1.Country AS `País`,
  COUNT(c1.Country) - 1 AS `Número de compatriotas`
FROM 
  w3schools.customers AS c1
JOIN w3schools.customers AS c2 ON c1.Country = c2.Country
GROUP BY `País`, `Nome`
ORDER BY `Nome`;
