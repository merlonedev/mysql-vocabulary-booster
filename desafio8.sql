SELECT
c.ContactName AS `Nome de contato`,
s.ShipperName AS `Empresa que fez o envio`,
o.OrderDate AS `Data do pedido`
FROM w3schools.customers AS c
INNER JOIN w3schools.orders AS o
ON c.CustomerID = o.CustomerID
INNER JOIN w3schools.shippers AS s
ON o.ShipperID = s.ShipperID
HAVING `Empresa que fez o envio` IN ('United Package', 'Speedy Express')
ORDER BY
`Nome de contato`,
`Empresa que fez o envio`,
`Data do pedido`;
