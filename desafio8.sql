SELECT 
    c.ContactName AS `Nome de Contato`,
    s.ShipperName AS `Empresa que fez o envio`,
    o.OrderDate AS `Data do Pedido`
FROM
    w3schools.orders AS o
        INNER JOIN
    w3schools.customers AS c ON c.CustomerID = o.CustomerID
        INNER JOIN
    w3schools.shippers AS s ON s.ShipperID = o.ShipperID
WHERE
    s.ShipperID IN (1 , 2)
ORDER BY `Nome de Contato` , `Empresa que fez o envio` , `Data do Pedido`;
