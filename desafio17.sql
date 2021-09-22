DELIMITER $$

CREATE TRIGGER atualizarColunaOrderDate
before insert on orders
for each row
begin
SET	new.OrderDate = DATE(NOW());
end $$

DELIMITER ;
