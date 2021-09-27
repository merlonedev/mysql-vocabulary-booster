SELECT 
    cs1.ContactName 'Nome',
    cs1.Country AS 'País',
    (SELECT COUNT(*) - 1
      FROM w3schools.customers AS cs2
      WHERE cs1.Country = cs2.Country
      GROUP BY cs2.Country) AS 'Número de compatriotas'
FROM w3schools.customers AS cs1
WHERE
    (SELECT COUNT(*) - 1
      FROM w3schools.customers AS cs2
      WHERE cs2.Country = cs1.Country
      GROUP BY cs2.Country) > 0
ORDER BY cs1.ContactName;
