SELECT 
    c.Country AS País
FROM
    customers AS c 
UNION SELECT 
    s.Country AS País
FROM
    suppliers AS s
ORDER BY País
LIMIT 5;