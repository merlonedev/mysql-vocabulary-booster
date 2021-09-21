SELECT 
    prod.ProductName AS `Produto`,
    prod.Price AS `Preço`
FROM
    w3schools.order_details AS ords
INNER JOIN w3schools.products AS prod ON prod.ProductID = ords.ProductID
WHERE Quantity > 80
ORDER BY `Produto`;
