SELECT
    c.ContactName AS 'Nome de contato',
    s.ShipperName AS 'Empresa que fez o envio',
    o.OrderDate AS 'Data do pedido'
FROM
    customers AS c
        JOIN
    orders AS o ON o.CustomerID = c.CustomerID
        JOIN
    shippers AS s ON s.ShipperID = o.ShipperID
WHERE
    o.ShipperID IN (1 , 2)
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
