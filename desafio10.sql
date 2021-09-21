SELECT (SELECT ProductName FROM w3schools.products WHERE ProductID = od.ProductID) AS Produto, MIN(Quantity) AS Mínima, MAX(Quantity) AS Máxima, ROUND(AVG(Quantity), 2) AS Média 
FROM w3schools.order_details AS od
GROUP BY Produto
HAVING Média > 20
ORDER BY Média;
