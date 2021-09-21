SELECT 
    contactName AS 'Nome de contato',
    s.ShipperName AS 'Empresa que fez o envio',
    OrderDate AS 'Data do pedido'
FROM
    orders o
        INNER JOIN
    customers c ON o.customerID = c.customerID
        INNER JOIN
    shippers s ON s.ShipperID = o.ShipperID
    WHERE s.ShipperName = 'United Package' OR s.ShipperName = 'Speedy Express'
ORDER BY contactName ASC, s.ShipperName ASC, OrderDate ASC;
