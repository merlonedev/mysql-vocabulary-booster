SELECT 
    c.ContactName AS 'Nome de contato',
    s.ShipperName AS 'Empresa que fez o envio',
    o.OrderDate AS 'Data do pedido'
FROM
    w3schools.customers AS c
        JOIN
    orders AS o ON o.CustomerID = c.CustomerID
        JOIN
    shippers AS s ON o.ShipperID = s.ShipperID
WHERE
    s.ShipperID = 1 OR s.ShipperID = 2
ORDER BY c.ContactName , s.ShipperName , o.OrderDate;
