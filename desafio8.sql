SELECT ContactName AS `Nome de contato`,
ShipperName AS `Empresa que fez o envio`,
OrderDate AS `Data do pedido`
FROM w3schools.orders
INNER JOIN w3schools.shippers ON shippers.ShipperID = orders.ShipperID
INNER JOIN w3schools.customers ON customers.CustomerID = orders.CustomerID
WHERE ShipperName = 'United Package' OR ShipperName = 'Speedy Express'
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
