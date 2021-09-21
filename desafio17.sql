DELIMITER $$

CREATE TRIGGER trigger_orders_insert
    BEFORE INSERT ON orders
    FOR EACH ROW
BEGIN
    SET NEW.OrderDate = current_date();
END $$

DELIMITER ;
