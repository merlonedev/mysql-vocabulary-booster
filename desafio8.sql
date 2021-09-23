SELECT 
    ContactName AS `Nome de contato`,
    (SELECT 
            sp.ShipperName
        FROM
            shippers AS sp
        WHERE
            sp.ShipperID = o.ShipperID) AS `Empresa que fez o envio`,
    o.OrderDate AS `Data do pedido`
FROM
    customers AS c
        JOIN
    orders AS o ON c.CustomerID = o.CustomerID
WHERE
    o.ShipperID = 1 OR 2
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
