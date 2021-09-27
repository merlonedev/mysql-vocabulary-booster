SELECT T2.ProductName AS 'Produto',
T2.price AS 'Preço'
FROM w3schools.order_details AS T1
INNER JOIN w3schools.products AS T2
ON T1.ProductID = T2.ProductID
WHERE T1.Quantity > 80
GROUP BY T1.ProductID
ORDER BY T2.ProductName ASC;
