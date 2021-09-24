SELECT 
    c.ContactName 'Nome de contato',
    s.ShipperName 'Empresa que fez o envio',
    o.OrderDate 'Data do pedido'
FROM
    w3schools.orders o
        JOIN
    w3schools.customers c ON c.CustomerID = o.CustomerID
        JOIN
    w3schools.shippers s ON s.ShipperID = o.ShipperID
WHERE s.ShipperName  in ('Speedy Express', 'United Package')
ORDER BY c.ContactName , s.ShipperName , o.OrderDate;
