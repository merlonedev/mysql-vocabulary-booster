-- 11 - Exibe todas as pessoas clientes **que possuem compatriotas**,
-- mostrando a quantidade de compatriotas para cada pessoa cliente

SELECT 
    c.ContactName AS 'Nome',
    c.Country AS 'País',
    (SELECT 
            COUNT(Country) - 1
        FROM
            customers AS cc
        WHERE
            c.Country = cc.Country) AS 'Número de compatriotas'
FROM
    customers AS c
HAVING `Número de compatriotas` > 0
ORDER BY c.ContactName;
