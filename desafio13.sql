SELECT
  pro.ProductName AS 'Produto',
  pro.Price AS 'Preço'
FROM w3schools.products AS pro
INNER JOIN w3schools.order_details AS ord
ON pro.ProductID = ord.ProductID
WHERE Quantity > 80
ORDER BY `Produto`;
