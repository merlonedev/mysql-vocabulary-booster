SELECT
t2.ProductName AS `Produto`,
t1.min AS `Mínima`,
t1.max AS `Máxima`,
t1.average AS `Média`
FROM
(SELECT 
    ProductID,
    MIN(Quantity) AS `min`,
    MAX(Quantity) AS `max`,
    ROUND(AVG(Quantity), 2) AS `average`
FROM
    w3schools.order_details
GROUP BY ProductID) AS t1
INNER JOIN w3schools.products t2
ON t1.ProductID = t2.ProductID
HAVING `Média` > 20.00
ORDER BY `Média`, `Produto`;
