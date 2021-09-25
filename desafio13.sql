SELECT 
    p.ProductName, p.Price
FROM
    products AS p
        JOIN
    order_details AS od ON od.ProductID = p.ProductID
        AND od.Quantity > 80
ORDER BY ProductName;
