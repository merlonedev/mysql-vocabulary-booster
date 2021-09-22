SELECT c.ContactName AS `Nome de contato`,
s.ShipperName AS `Empresa que fez o envio`,
o.OrderDate AS `Data do pedido`
FROM orders AS o
INNER JOIN customers AS c
ON c.CustomerID = o.CustomerID
INNER JOIN shippers AS s
ON s.ShipperID = o.ShipperID AND s.ShipperID <> 3
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
