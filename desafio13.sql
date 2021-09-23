SELECT
  p.ProductName,
  p.Price
FROM w3schools.products AS p
WHERE p.ProductID = ANY (SELECT ProductID FROM w3schools.order_details WHERE Quantity = 80)
ORDER BY p.ProductName;
