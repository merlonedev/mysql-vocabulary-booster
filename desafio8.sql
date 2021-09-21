SELECT c.contactName 'Nome de contato',
s.shipperName 'Empresa que fez o envio',
o.orderDate 'Data do pedido'
FROM w3schools.customers c
JOIN w3schools.orders o ON o.customerId = c.customerId
JOIN w3schools.shippers s ON s.shipperId = o.shipperId
WHERE s.shipperName IN ('Speedy Express', 'United Package')
ORDER BY c.contactName, s.shipperName, o.orderDate;
