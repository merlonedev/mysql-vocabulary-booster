SELECT 
    c.ContactName AS 'Nome de contato',
    s.ShipperName AS 'Empresa que fez o envio',
    o.OrderDate AS 'Data do pedido'
FROM
    orders AS o
        JOIN
    shippers AS s ON o.ShipperID = s.ShipperID
        JOIN
    customers AS c ON c.CustomerID = o.CustomerID
WHERE
    s.ShipperID LIKE '1'
        OR s.ShipperID LIKE '2'
ORDER BY `Nome de contato` , s.ShipperName , o.OrderDate;
