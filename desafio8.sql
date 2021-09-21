SELECT 
    c.ContactName AS 'Nome de contato',
    s.ShipperName AS 'Empresa que fez o envio',
    OrderDate AS 'Data do pedido'
FROM
    orders AS o
        INNER JOIN
    customers AS c ON o.CustomerID = c.CustomerID
        INNER JOIN
    shippers AS s ON o.ShipperID = s.ShipperID
WHERE
    o.ShipperID IN (1 , 2)
ORDER BY `Nome de contato` , `Empresa que fez o envio` , `Data do pedido`;
