DELIMITER $$

CREATE TRIGGER orders_auto_date
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
SET NEW.OrderDate = CURRENT_DATE();
END $$

DELIMITER ;
