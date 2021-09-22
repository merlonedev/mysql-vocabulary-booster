SELECT 
    p.ProductName AS `Produto`,
    p.Price AS `Preço`
FROM
    products AS `p`
WHERE EXISTS (
    SELECT
        *
    FROM order_details AS `od`
    WHERE od.Quantity > 80 AND p.ProductID = od.ProductID
)
ORDER BY ProductName;
