USE w3schools;

DELIMITER $$

CREATE TRIGGER date_on_add_new_order
BEFORE INSERT ON w3schools.orders
FOR EACH ROW
BEGIN
	SET NEW.OrderDate = DATE(NOW());
END
$$

DELIMITER ;
