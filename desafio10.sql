-- 10 - Exibe todos os produtos que já foram pedidos, 
-- que possuem uma média de quantidade nos pedidos registrados acima de `20.00`

SELECT 
    p.ProductName AS 'Produto',
    MIN(Quantity) AS 'Mínima',
    MAX(Quantity) AS 'Máxima',
    ROUND(AVG(Quantity), 2) AS `Média`
FROM
    order_details od
    INNER JOIN products p ON p.ProductID = od.ProductID
GROUP BY od.ProductID
HAVING ROUND(AVG(Quantity), 2) > 20
ORDER BY `Média` ASC, p.ProductName ASC;
