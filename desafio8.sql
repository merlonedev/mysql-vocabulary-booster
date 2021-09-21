SELECT 
    cu.ContactName AS `Nome de contato`,
    shi.ShipperName AS `Empresa que fez o envio`,
    o.OrderDate AS `Data do pedido`
FROM w3schools.orders AS o
	INNER JOIN w3schools.customers AS cu ON o.CustomerID = cu.CustomerID
    INNER JOIN w3schools.shippers AS shi ON o.ShipperID = shi.ShipperID
WHERE o.ShipperID IN (1, 2)
ORDER BY `Nome de contato` ASC, `Empresa que fez o envio` ASC, `Data do pedido`;
