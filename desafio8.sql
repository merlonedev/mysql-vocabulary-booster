SELECT 
    ContactName AS `Nome de contato`,
    SP.ShipperName AS `Empresa que fez o envio`,
    o.OrderDate AS `Data do pedido`
FROM
    customers AS c
        JOIN
    orders AS o ON c.CustomerID = o.CustomerID
    JOIN
    shippers AS SP ON SP.ShipperID = o.ShipperID
WHERE
    o.ShipperID IN(1,2)
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
