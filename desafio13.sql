SELECT
p.ProductName AS Produto,
p.Price AS Preço
FROM products AS p
INNER JOIN order_details AS od
ON od.ProductID = p.ProductID
WHERE od.Quantity > 80
ORDER BY Produto;
