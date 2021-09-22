SELECT 
    c.ContactName AS `Nome`,
    c.Country AS `País`,
    nc.Numb_compatriots - 1 AS `Número de compatriotas`
FROM
    customers AS `c`
INNER JOIN (
    SELECT
        Country,
        COUNT(Country) AS `Numb_compatriots`
    FROM
        customers
    GROUP BY Country
) AS `nc`
ON c.Country = nc.Country
WHERE nc.Numb_compatriots - 1 > 0
ORDER BY `Nome`;
