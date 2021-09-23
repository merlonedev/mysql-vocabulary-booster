SELECT
  ProductName AS 'Produto',
  Price As 'Preço'
From w3schools.products AS p
INNER JOIN 
  w3schools.order_details AS od
ON p.ProductID = od.ProductID
WHERE Quantity > 80
ORDER BY `Produto`;
