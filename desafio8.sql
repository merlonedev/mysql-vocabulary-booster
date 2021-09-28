use w3schools;
SELECT 
    c.ContactName AS 'Nome de contato',
    s.ShipperName AS 'Empresa que fez o envio',
    o.OrderDate AS 'Data do pedido'
FROM
    customers AS c
        INNER JOIN
    orders AS o ON c.CustomerID = o.customerID
        INNER JOIN
    shippers AS s ON o.ShipperID = s.ShipperID
    where s.shipperName = `Speedy Express` or s.shipperName = `United Package`
order by `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
