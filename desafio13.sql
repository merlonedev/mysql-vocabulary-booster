SELECT 
  p.ProductName AS 'Produto', 
  p.Price AS 'Preço' 
FROM 
  w3schools.order_details AS 'od' 
  INNER JOIN w3schools.products AS 'p' ON od.ProductID = p.ProductID 
GROUP BY 
  p.ProductName, 
  p.Price 
HAVING 
  MAX(Quantity) > 80 
ORDER BY 
  `Produto`;
