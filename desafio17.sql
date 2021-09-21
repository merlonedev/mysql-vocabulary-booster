USE w3schools;
DELIMITER $$

CREATE TRIGGER trigger_currentydate_insert
BEFORE INSERT ON w3schools.orders
FOR EACH ROW
BEGIN
SET NEW.OrderDate = CURRENT_DATE();
END $$

DELIMITER ;
