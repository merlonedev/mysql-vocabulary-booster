SELECT 
    c.ContactName AS `Nome de contato`,
    s.ShipperName AS `Empresa que fez o envio`,
    o.OrderDate AS `Data do pedido`
FROM
    customers c
    JOIN orders o
    ON o.CustomerID = c.CustomerID
    JOIN shippers s
    ON o.ShipperID = s.ShipperID
WHERE o.ShipperID IN (1,2)
ORDER BY c.ContactName, s.ShipperName, o.OrderDate;
