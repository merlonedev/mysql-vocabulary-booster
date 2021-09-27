SELECT 
    P.ProductName AS 'Produto',
    MIN(D.Quantity) AS 'Mínima',
    MAX(D.Quantity) AS 'Máxima',
    ROUND(AVG(D.Quantity), 2) AS 'Média'
FROM
    w3schools.products AS P
        JOIN
    w3schools.order_details AS D ON D.ProductID = P.ProductID
GROUP BY D.ProductID
HAVING `Média` > 20
ORDER BY `Média` ASC , `Produto` ASC;
