SELECT
pdt.ProductName AS Produto,
    MIN(dtls.Quantity) AS Mínima,
MAX(dtls.Quantity) AS Máxima,
    ROUND(AVG(dtls.Quantity), 2) AS Média
FROM
w3schools.products AS pdt
INNER JOIN
w3schools.order_details AS dtls ON dtls.ProductID = pdt.ProductID
GROUP BY dtls.ProductID
HAVING Média > 20.00
ORDER BY Média, Produto;
