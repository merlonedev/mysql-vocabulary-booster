	SELECT 
p.ProductName AS 'Produto', p.Price AS 'Preço'
FROM
w3schools.products as p
inner join w3schools.order_details as od on od.ProductID = p.ProductID
where od.Quantity > 80
order by p.ProductName;
