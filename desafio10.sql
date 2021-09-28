SELECT
P.ProductName AS `Produto`,
M.min AS `Mínima`,
M.max AS `Máxima`,
M.average AS `Média`
FROM
(SELECT 
    ProductID,
    MIN(Quantity) AS `min`,
    MAX(Quantity) AS `max`,
    ROUND(AVG(Quantity), 2) AS `average`
FROM
    w3schools.order_details
GROUP BY ProductID) AS M
INNER JOIN w3schools.products P
ON M.ProductID = P.ProductID
HAVING `Média` > 20.00
ORDER BY `Média`, `Produto`;
