SELECT
  ProductName AS `Produto`,
  Price AS `Preço`
FROM w3schools.products P
JOIN w3schools.order_details OD
  ON P.ProductID = OD.ProductID
WHERE OD.Quantity > 80
ORDER BY `Produto`;
