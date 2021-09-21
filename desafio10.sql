SELECT 
    (SELECT 
            p.ProductName
        FROM
            w3schools.products AS p
        WHERE
            p.ProductID = od.ProductID) AS `Produto`,
    MIN(od.Quantity) AS `Mínima`,
    MAX(od.Quantity) AS `Máxima`,
    ROUND(AVG(od.Quantity), 2) AS `Média`
FROM
    w3schools.order_details AS od
GROUP BY od.ProductID
HAVING `Média` > 20
ORDER BY `Média` , `Produto`;
