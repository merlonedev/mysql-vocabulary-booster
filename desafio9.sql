SELECT 
    CONCAT(em.FirstName, ' ', em.LastName) AS `Nome completo`,
    count(*) AS `Total de pedidos`
FROM
    orders AS `o`
INNER JOIN employees AS `em`
ON o.EmployeeID = em.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
