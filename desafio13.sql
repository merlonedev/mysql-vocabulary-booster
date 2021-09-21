SELECT 
    p.ProductName AS 'Produto', p.Price AS 'Preço'
FROM
    w3schools.products AS p
        INNER JOIN
    w3schools.order_details AS od ON od.ProductID = p.ProductID
GROUP BY `Produto`, `Preço` 
HAVING MAX(od.Quantity) > 80
ORDER BY Produto;
