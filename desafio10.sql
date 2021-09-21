SELECT products.ProductName AS `Produto`,
MIN(Quantity) AS `Mínima`,
MAX(Quantity) AS `Máxima`,
ROUND(AVG(Quantity), 2) AS `Média`
FROM order_details
INNER JOIN products ON products.ProductID = order_details.ProductID
GROUP BY order_details.ProductID
HAVING `Média` > 20
ORDER BY `Média` ASC, `Produto` ASC;
