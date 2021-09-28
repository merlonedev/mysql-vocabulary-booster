SELECT
t1.ProductName AS `Produto`,
t1.Price AS `Preço`
FROM
w3schools.products t1
INNER JOIN (SELECT * FROM w3schools.order_details WHERE Quantity > 80) AS t2
ON t1.ProductID = t2.ProductID
ORDER BY `Produto`;
