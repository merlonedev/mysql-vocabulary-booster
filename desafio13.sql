SELECT
  p.ProductName AS `Produto`,
  p.Price AS `Preço`
FROM
  w3schools.order_details AS d
  INNER JOIN w3schools.products AS p ON p.ProductID = d.ProductID
WHERE
  d.Quantity > 80
ORDER BY
  `Produto`;
