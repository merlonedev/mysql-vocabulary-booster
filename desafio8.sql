SELECT
  C.ContactName AS `Nome de contato`,
  S.ShipperName AS `Empresa que fez o envio`,
  O.OrderDate AS `Data do pedido`
FROM
  w3schools.customers AS C
INNER JOIN
  w3schools.orders AS O ON C.CustomerId = O.CustomerId
INNER JOIN
  w3schools.shippers AS S ON O.ShipperId = S.ShipperId
WHERE
  S.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY
  `Nome de contato`,
  `Empresa que fez o envio`, `Data do pedido`;