SELECT 
    cA.ContactName AS 'Nome',
    cA.Country AS 'País',
    (SELECT 
            COUNT(*)
        FROM
            customers AS cB
        WHERE
            cB.Country = cA.Country
                AND cB.ContactName != cA.ContactName) AS `Número de compatriotas`
FROM
    customers AS cA
HAVING `Número de compatriotas` != 0
ORDER BY cA.ContactName;
