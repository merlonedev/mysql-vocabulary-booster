SELECT ProductName AS "Produto", Price AS "Preço"  
FROM w3schools.products p INNER JOIN w3schools.order_details o
ON p.ProductID = o.ProductID
WHERE o.Quantity > 80
ORDER BY ProductName ASC;
-- quero nome do produto e seu preço(tabela products) somente onde a quantidade >80(aí é tabela order_details.
