DROP FUNCTION IF EXISTS esprimo;

DELIMITER $$

CREATE FUNCTION esprimo(num INT) RETURNS BOOLEAN
BEGIN 
	DECLARE primo BOOLEAN;
	DECLARE i INT;
	SET i=2;
	SET primo=true;
	WHILE (i<num) DO
		IF (num%i=0)THEN
			SET primo=false;
		END IF;
		SET i=i+1;
	END WHILE;
	RETURN primo;
END $$

DELIMITER ;