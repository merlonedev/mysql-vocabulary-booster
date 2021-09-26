SELECT 
    (SELECT 
            ContactName
        FROM
            w3schools.customers AS C
        WHERE
            C.CustomerID = O.CustomerID) AS 'Nome de contato',
    (SELECT 
            ShipperName
        FROM
            w3schools.shippers AS S
        WHERE
            S.ShipperID = O.ShipperID) AS 'Empresa que fez o envio',
    O.OrderDate AS 'Data do pedido'
FROM
    w3schools.orders AS O
WHERE
    O.ShipperID = 1 OR O.ShipperID = 2
ORDER BY `Nome de contato` ASC , `Empresa que fez o envio` ASC , `Data do pedido` ASC;
