SELECT 
    c.ContactName AS 'Nome de contato',
    s.ShipperName AS 'Empresa que fez o envio',
    o.OrderDate AS 'Data do pedido'
FROM
    orders o
        INNER JOIN
    customers c ON o.CustomerID = c.CustomerID
        INNER JOIN
    shippers s ON o.ShipperID = s.ShipperID
WHERE
    s.ShipperName = 'Speedy Express'
        OR s.ShipperName = 'United Package'
ORDER BY c.ContactName , s.ShipperName , o.OrderDate;
