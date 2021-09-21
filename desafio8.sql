SELECT 
(SELECT ContactName FROM w3schools.customers AS c WHERE c.CustomerID = o.CustomerID) AS `Nome de contato`,
(SELECT ShipperName FROM w3schools.shippers AS s WHERE o.ShipperID = s.ShipperID) AS `Empresa que fez o envio`,
OrderDate AS `Data do pedido`
FROM w3schools.orders AS o
WHERE o.ShipperID IN (1, 2)
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
