-- SELECT * FROM w3schools.orders;
SELECT ContactName AS `Nome de contato`,
ShipperName AS `Empresa que fez o envio`,
OrderDate AS `Data do pedido`
FROM w3schools.orders
INNER JOIN w3schools.customers ON customers.CustomerID = orders.CustomerID
INNER JOIN w3schools.shippers ON shippers.ShipperID = orders.ShipperID
WHERE shippers.ShipperName = 'United Package' OR shippers.ShipperName = 'Speedy Express'
ORDER BY `Nome de contato` ASC, `Empresa que fez o envio` ASC, `Data do pedido` ASC;
