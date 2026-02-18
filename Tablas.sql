DROP PROCEDURE IF EXISTS tabla;

DELIMITER $$

CREATE PROCEDURE tabla(num INT)
BEGIN
	DECLARE i INT;
	SET i=0;
	
	WHILE (i<=10) DO
		SELECT CONCAT(num," x ",i," = ",(num*i))AS"tabla de multiplicar";
		SET i=i+1;
	END WHILE;
END $$

DELIMITER ;