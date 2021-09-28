SELECT
    consumidores.ContactName AS 'Nome de contato',
    CASE pedidos.ShipperID
        WHEN 1 THEN 'Speedy Express'
        ELSE 'United Package'
    END AS 'Empresa que fez o envio',
    pedidos.OrderDate AS 'Data do pedido'
FROM
    w3schools.customers AS consumidores
        INNER JOIN
    w3schools.orders AS pedidos ON pedidos.ShipperID IN (1 , 2)
WHERE
    consumidores.CustomerID = pedidos.CustomerID
ORDER BY `Nome de contato` , `Empresa que fez o envio` , `Data do pedido`;
