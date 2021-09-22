SELECT distinct Country AS País FROM customers
UNION
SELECT distinct Country FROM suppliers AS País
ORDER BY País
LIMIT 5;
