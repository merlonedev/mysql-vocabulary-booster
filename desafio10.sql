SELECT 
    p.productName AS `Produto`,
    MIN(o.quantity) AS `Mínima`,
    MAX(o.quantity) AS `Máxima`,
    ROUND(AVG(o.quantity), 2) AS `Média`
FROM
    w3schools.order_details AS o
        JOIN
    w3schools.products AS p ON p.productId = o.productId
GROUP BY p.productName
HAVING `Média` > 20
ORDER BY `Média`, `Produto`;
