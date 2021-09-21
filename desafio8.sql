SELECT 
    customer.ContactName AS `Nome de contato`,
    shipper.ShipperName AS `Empresa que fez o envio`,
    _order.OrderDate AS `Data do pedido`
FROM
    w3schools.orders AS _order
        JOIN
    w3schools.customers AS customer ON customer.CustomerID = _order.CustomerID
        JOIN
    w3schools.shippers AS shipper ON shipper.ShipperID = _order.ShipperID
WHERE
    _order.ShipperId BETWEEN 1 AND 2
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
