SELECT 
    p.ProductName AS 'Produto',
    ROUND(MIN(od.quantity), 2) AS 'Mínima',
    ROUND(MAX(od.quantity), 2) AS 'Máxima',
    ROUND(AVG(od.quantity), 2) AS 'Média'
FROM
    w3schools.order_details AS od
        JOIN
    w3schools.products AS p ON p.ProductID = od.ProductID
GROUP BY `Produto`
ORDER BY `Média` , `Produto` ASC
LIMIT 77 OFFSET 29;
