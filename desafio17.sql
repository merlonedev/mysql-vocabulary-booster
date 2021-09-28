use w3schools;

DELIMITER $$;

CREATE trigger addCurrentData
before insert on orders
for each row
begin
SET NEW.OrderDate = CURRENT_DATE();
end $$;

DELIMITER ;
