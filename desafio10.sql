SELECT 
    p.ProductName AS `Produto`,
    (SELECT 
            MIN(o.Quantity)
        FROM
            w3schools.order_details o
        WHERE
            o.ProductID = od.ProductID) AS `Mínima`,
    (SELECT 
            MAX(o.Quantity)
        FROM
            w3schools.order_details o
        WHERE
            o.ProductID = od.ProductID) AS `Máxima`,
    ROUND(AVG(Quantity),2) AS `Média`
FROM
    w3schools.order_details od
        INNER JOIN
    w3schools.products p ON p.ProductID = od.ProductID
GROUP BY od.ProductID
HAVING Média > 20
ORDER BY `Média` ASC , `Produto` ASC;
