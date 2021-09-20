USE w3schools;

DELIMITER $$
CREATE TRIGGER adiciona_nova_data
    BEFORE INSERT ON orders
    FOR EACH ROW
BEGIN
    SET NEW.OrderDate = CURDATE();
END $$
DELIMITER ;
