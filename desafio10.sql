SELECT 
    ProductName AS `Produto`,
    MIN(od.Quantity) AS `Mínima`,
    MAX(od.Quantity) AS `Máxima`,
    ROUND(AVG(od.Quantity), 2) AS `Média`
FROM
    products AS p
        INNER JOIN
    order_details AS od ON p.ProductID = od.ProductID
WHERE
    (SELECT ROUND(AVG(od.Quantity), 2)) > 20
GROUP BY p.ProductName
ORDER BY `Média` , `Produto`
