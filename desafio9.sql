SELECT CONCAT(e.firstName, ' ', lastName) 'Nome completo',
	COUNT(o.orderId) 'Total de pedidos'
FROM w3schools.employees e
JOIN w3schools.orders o ON o.employeeId = e.employeeId
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
