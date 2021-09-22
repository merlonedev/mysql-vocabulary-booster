SELECT 
  P.ProductName AS `Produto`,
  P.Price AS `Preço`
FROM
  w3schools.products AS P
WHERE 
  (SELECT MAX(Quantity)
   FROM w3schools.order_details AS OD
   WHERE P.ProductID = OD.ProductID
  ) > 80
ORDER BY `Produto`;
  