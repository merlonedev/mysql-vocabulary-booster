SELECT 
    P.ProductName AS `Produto`,
    MIN(Quantity) AS `Mínima`,
    MAX(Quantity) AS `Máxima`,
    ROUND(AVG(Quantity), 2) AS `Média`
FROM
    w3schools.order_details AS O
        JOIN
    products AS P ON P.ProductID = O.ProductID
GROUP BY P.ProductID
HAVING `Média` > 20
ORDER BY `Média` , `Produto`;
