SELECT 
    T1.ContactName AS 'Nome',
    T1.Country AS 'País',
    (SELECT 
            COUNT(T2.Country)
        FROM
            w3schools.customers AS T2
        WHERE
            T1.Country = T2.Country
                AND T1.CustomerID <> T2.CustomerID) AS 'Número de compatriotas'
FROM
    w3schools.customers AS T1
HAVING `Número de compatriotas` > 0
ORDER BY `Nome` ASC;
