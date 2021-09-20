SELECT p.ProductName AS Produto,
p.Price AS 'Preço'
FROM w3schools.order_details od
JOIN w3schools.products p
ON od.ProductID = p.ProductID
WHERE od.Quantity > 80
GROUP BY Produto, `Preço`
ORDER BY Produto;
