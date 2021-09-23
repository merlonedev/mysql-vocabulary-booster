SELECT 
  p.ProductName AS `Produto`,
  p.Price AS `Preço`
FROM
  w3schools.order_details AS d
JOIN w3schools.products AS p ON d.ProductID = p.ProductID AND d.Quantity > 80
ORDER BY `Produto`;
