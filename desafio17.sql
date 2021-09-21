DELIMITER $$

CREATE TRIGGER trigger_insert_orders
	AFTER INSERT ON orders
    FOR EACH ROW
BEGIN
	SET NEW.OrderDate = NOW();
END $$

DELIMITER ;
