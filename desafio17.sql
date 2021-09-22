DELIMITER $$

CREATE TRIGGER insertDateTrigger
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
SET NEW.OrderDate = now();
END $$

DELIMITER ;
