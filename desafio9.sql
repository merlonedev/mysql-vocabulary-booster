SELECT
	CONCAT(emp.FirstName, ' ', emp.LastName) AS `Nome completo`,
    COUNT(odr.EmployeeID) AS `Total de pedidos`
FROM
w3schools.employees AS emp
INNER JOIN 
w3schools.orders AS odr ON odr.EmployeeID = emp.EmployeeID
    GROUP BY odr.EmployeeID
    ORDER BY `Total de pedidos`;
