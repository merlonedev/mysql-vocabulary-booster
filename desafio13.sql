SELECT productName 'Produto',
price 'Preço'
FROM w3schools.products
WHERE productId IN (
	SELECT productId FROM w3schools.order_details
    WHERE quantity > 80)
ORDER BY 1;
