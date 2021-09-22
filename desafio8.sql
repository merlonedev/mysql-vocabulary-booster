SELECT  c.ContactName as "Nome de contato", 
s.ShipperName as "Empresa que fez o envio",
o.OrderDate as "Data do pedido" 
FROM w3schools.customers c inner join w3schools.orders o on c.CustomerID = o.CustomerID -- Customer_ID é o ponto comum
inner join w3schools.shippers s on s.ShipperID = o.ShipperID -- ShipperID é o ponto comum
WHERE 
s.ShipperID IN (1,2) -- README pede(olhar tabela shippers)
ORDER BY `Nome de contato` ASC, `Empresa que fez o envio` ASC, `Data do pedido` ASC; -- se quiser colocar com os nomes dados depois do AS, tem que usar crase ao invés de aspas.
