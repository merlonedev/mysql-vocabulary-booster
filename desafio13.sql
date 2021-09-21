SELECT product.ProductName AS 'Produto', product.Price AS 'Preço' from w3schools.products AS product
INNER JOIN w3schools.order_details AS ord
ON product.ProductID = ord.ProductID
WHERE Quantity > 80
ORDER BY `Produto`;
