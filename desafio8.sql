SELECT 
    c.ContactName AS 'Nome de contato',
    s.ShipperName AS 'Empresa que fez o envio',
    o.OrderDate AS 'Data do pedido'
FROM
    orders AS o
        JOIN
    shippers s ON s.ShipperID = o.ShipperId
        JOIN
    customers c ON c.CustomerID = o.CustomerID
    WHERE s.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY c.ContactName , s.ShipperName , o.OrderDate;
