SELECT products.ProductName AS `Produto`, products.price AS `Preço`
FROM w3schools.order_details AS orderDetails
INNER JOIN w3schools.products AS products
ON orderDetails.ProductID = products.ProductID
WHERE orderDetails.Quantity > 80
ORDER BY products.ProductName;
