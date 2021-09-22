SELECT
  *
FROM
  (SELECT
    ContactName AS `Nome`,
    Country AS `País`,
    ((
      SELECT
        COUNT(Country)
      FROM
        w3schools.customers
      WHERE
        Country = `País`
      GROUP BY
        Country
      ) - 1) AS `Número de compatriotas`
  FROM
    w3schools.customers
  ORDER BY
    `Nome`) AS T1
WHERE
  T1.`Número de compatriotas` > 0;
