SELECT 
    pro.ProductName AS `Produto`,
    MIN(od.Quantity) AS `Mínima`,
    MAX(od.Quantity) AS `Máxima`,
    ROUND(AVG(od.Quantity), 2) AS `Média`
FROM w3schools.order_details AS od
INNER JOIN w3schools.products AS pro ON od.ProductID = pro.ProductID
GROUP BY od.ProductID HAVING `Média` > 20
ORDER BY `Média` ASC, `Produto` ASC;
