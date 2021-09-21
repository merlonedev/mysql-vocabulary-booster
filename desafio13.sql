SELECT P.ProductName AS 'Produto',P.Price AS 'Preço'
FROM w3schools.products AS P
WHERE EXISTS (
SELECT * FROM w3schools.order_details
WHERE ProductID = P.ProductID
AND Quantity > 80
)
ORDER BY P.ProductName;
