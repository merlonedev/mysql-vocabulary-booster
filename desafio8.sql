SELECT 
    (SELECT 
            c.ContactName
        FROM
            w3schools.customers c
        WHERE
            c.CustomerID = o.CustomerID) AS `Nome de contato`,
    (SELECT 
            s.ShipperName
        FROM
            w3schools.shippers s
        WHERE
            s.ShipperID = o.ShipperID) AS `Empresa que fez o envio`,
    o.OrderDate AS `Data do pedido`
FROM
    w3schools.orders o
WHERE
    o.ShipperID IN (1 , 2)
ORDER BY `Nome de contato` ASC , `Empresa que fez o envio` ASC , `Data do pedido` ASC;
