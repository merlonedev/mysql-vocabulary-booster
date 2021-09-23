SELECT
  p.ProductName,
  p.Price,
  od.Quantity
FROM w3schools.order_details AS od
INNER JOIN w3schools.products AS p ON od.ProductID = p.ProductID
GROUP BY p.ProductName
HAVING od.Quantity > 80;
