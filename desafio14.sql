(SELECT customers.country AS `País`
FROM w3schools.order_details AS orderDetails
INNER JOIN w3schools.orders AS orders
ON orderDetails.OrderID = orders.OrderID
INNER JOIN w3schools.customers AS customers
ON orders.CustomerID = customers.CustomerID)
UNION (SELECT suppliers.country AS `País`
FROM w3schools.order_details AS orderDetails
INNER JOIN w3schools.products AS products
ON orderDetails.ProductID = products.ProductID
INNER JOIN w3schools.suppliers AS suppliers
ON products.SupplierID = suppliers.SupplierID)
ORDER BY `País` LIMIT 5;
