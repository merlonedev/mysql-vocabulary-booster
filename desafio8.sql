SELECT 
    (SELECT 
            ContactName
        FROM
            customers AS c
        WHERE
            c.CustomerID = o.CustomerID) AS 'Nome de contato',
    (SELECT 
            ShipperName
        FROM
            shippers AS s
        WHERE
            s.ShipperID = o.ShipperID) AS 'Empresa que fez o envio',
    o.OrderDate AS 'Data do pedido'
FROM
    orders AS o
WHERE
    o.ShipperID IN (1 , 2)
ORDER BY `Nome de contato` , `Empresa que fez o envio` , `Data do pedido`;
