SELECT 
    a.contactName AS `Nome de contato`,
    c.shippername AS `Empresa que fez o envio`,
    b.orderDate AS `Data do pedido`
FROM
    customers AS a
        INNER JOIN
    orders AS b ON a.customerId = b.customerID
        INNER JOIN
    shippers AS c ON b.shipperID = c.shipperID
WHERE
    c.shipperID = 1 OR c.shipperID = 2
ORDER BY `Nome de contato`, `Empresa que fez o envio`,`Data do pedido`;
