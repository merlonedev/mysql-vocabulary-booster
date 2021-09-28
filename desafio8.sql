SELECT 
    wcust.ContactName AS 'Nome de contato',
    wshipp.ShipperName AS 'Empresa que fez o envio',
    word.OrderDate AS 'Data do pedido'
FROM
    w3schools.customers AS wcust
        INNER JOIN
    w3schools.orders AS word ON word.CustomerID = wcust.CustomerID
        INNER JOIN
    w3schools.shippers AS wshipp ON wshipp.ShipperID = word.ShipperID
WHERE
    wshipp.ShipperName = 'Speedy Express'
        OR wshipp.ShipperName = 'United Package'
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
