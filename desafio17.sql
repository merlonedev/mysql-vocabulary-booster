drop trigger if exists onOrderAdd;

use w3schools;
DELIMITER $$

CREATE TRIGGER onOrderAdd
BEFORE INSERT ON w3schools.orders
FOR EACH ROW
BEGIN
    SET NEW.OrderDate = current_date();
END $$

DELIMITER ;
