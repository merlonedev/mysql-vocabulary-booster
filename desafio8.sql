SELECT 
    ContactName AS 'Nome de contato',
    ShipperName AS 'Empresa que fez o envio',
    OrderDate AS 'Data do pedido'
FROM
    w3schools.orders AS o
        INNER JOIN
    w3schools.customers AS c ON o.CustomerID = c.CustomerID
        INNER JOIN
    w3schools.shippers AS sh ON o.ShipperID = sh.ShipperID
WHERE
    ShipperName LIKE 'Speedy Express'
        OR ShipperName LIKE 'United Package'
ORDER BY ContactName , ShipperName , OrderDate;
