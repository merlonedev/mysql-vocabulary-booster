SELECT
N.ContactName AS `Nome de contato`,
IF(D.ShipperID = 1, 'Speedy Express', 'United Package') AS `Empresa que fez o envio`,
D.OrderDate AS `Data do pedido`
FROM
(SELECT * FROM w3schools.orders WHERE ShipperID = 1 OR ShipperID = 2) AS D
INNER JOIN w3schools.customers N
ON D.CustomerID =  N.CustomerID
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
