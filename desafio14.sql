SELECT Country   AS "País" FROM w3schools.customers 
UNION      -- comando importante
SELECT Country AS "País" FROM w3schools.suppliers 
ORDER BY `País`ASC -- aqui PRECISA ser `País`. Usei Country mas não deu certo.
LIMIT 5;

-- Com o UNION vou unir a coluna Country das tabelas de Customers(pessoas clientes) e de suppliers(fornecedores)
--  Além de unir os países que aparecem na coluna dessas 2 tabelas ele já vai mostrar os países distintos, sem repetições.
-- Por isso não preciso usar o DISTINCT.
