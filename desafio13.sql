SELECT
PROD.ProductName AS Produto,
PROD.Price as 'Preço'
FROM
w3schools.products AS PROD
JOIN
w3schools.order_details AS OD ON PROD.ProductID = OD.ProductID
WHERE OD.Quantity > 80
ORDER BY Produto;
