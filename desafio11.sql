SELECT 
    ct1.ContactName AS `Nome`,
    ct1.Country AS País,
    COUNT(ct1.ContactName)  AS `Número de compatriotas`
FROM
    customers AS ct1,
    customers AS ct2
WHERE
    ct1.Country = ct2.Country
        AND ct1.ContactName <> ct2.ContactName
GROUP BY ct1.Country , ct1.ContactName
ORDER BY ct1.ContactName;
