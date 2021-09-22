SELECT
ProductName AS Produto,
Price AS Preço
FROM products AS p
INNER JOIN order_details AS od
ON od.ProductID = p.ProductID
WHERE od.Quantity > 80
GROUP BY ProductName
ORDER BY Produto;
