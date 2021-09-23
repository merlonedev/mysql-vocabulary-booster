SELECT 
    ProductName AS 'Produto', Price AS 'Preço'
FROM
    w3schools.order_details AS od
        INNER JOIN
    w3schools.products AS p ON od.ProductID = p.ProductID
GROUP BY ProductName
HAVING MAX(Quantity) > 80
ORDER BY ProductName;
