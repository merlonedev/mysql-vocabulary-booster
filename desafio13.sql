SELECT
P.ProductName AS `Produto`,
P.Price AS `Preço`
FROM
w3schools.products P
INNER JOIN (SELECT * FROM w3schools.order_details WHERE Quantity > 80) AS PS
ON P.ProductID = PS.ProductID
ORDER BY `Produto`;
