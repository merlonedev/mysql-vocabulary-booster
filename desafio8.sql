SELECT 
    c.ContactName AS 'Nome de contato',
    s.ShipperName AS 'Empresa que fez o envio',
    o.OrderDate AS 'Data do pedido'
FROM
    orders AS o
        INNER JOIN
    shippers AS s ON o.ShipperID = s.ShipperID
        INNER JOIN
    customers AS c ON o.CustomerID = c.CustomerID
WHERE
    s.ShipperName IN ('Speedy Express' , 'United Package')
ORDER BY c.ContactName , s.ShipperName , o.OrderDate ASC;
