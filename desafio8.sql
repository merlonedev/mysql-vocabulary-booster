SELECT 
    c.contactName AS `Nome de contato`,
    s.shipperName AS `Empresa que fez o envio`,
    o.orderDate AS `Data do pedido`
FROM
    w3schools.customers AS c
        JOIN
    w3schools.orders AS o ON c.customerID = o.customerID
        JOIN
    w3schools.shippers AS s ON o.ShipperID = s.ShipperID
WHERE
    s.ShipperName = 'Speedy Express'
        OR s.ShipperName = 'United Package'
ORDER BY `Nome de contato` , `Empresa que fez o envio` , `Data do pedido`;
