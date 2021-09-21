SELECT 
    cust.ContactName AS `Nome de contato`,
    ship.ShipperName AS `Empresa que fez o envio`,
    ords.OrderDate AS `Data do pedido`
FROM
    w3schools.customers AS cust
    INNER JOIN w3schools.orders AS ords ON ords.CustomerID = cust.CustomerID
    INNER JOIN w3schools.shippers AS ship ON ship.ShipperID = ords.ShipperID
WHERE ship.ShipperName IN('Speedy Express', 'United Package')
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
