SELECT 
    ContactName AS 'Nome',
    Country AS 'País',
    (SELECT 
            COUNT(CustomerID) - 1
        FROM
            customers
        WHERE
            Country = customers_externo.Country) AS 'Número de compatriotas'
FROM
    customers AS customers_externo
ORDER BY ContactName ASC;