SELECT 
    c.ContactName 'Nome de contato',
    s.ShipperName 'Empresa que fez o envio',
    o.OrderDate 'Data do pedido'
FROM
    w3schools.customers c
        INNER JOIN
    w3schools.orders o ON o.CustomerID = c.CustomerID
        INNER JOIN
    w3schools.shippers s ON s.ShipperID = o.ShipperID
WHERE
    s.ShipperName IN ('Speedy Express' , 'United Package')
ORDER BY `Nome de contato` , `Empresa que fez o envio` , `Data do pedido`;
