DROP PROCEDURE IF EXISTS mostrarimpares;

DELIMITER $$

CREATE PROCEDURE mostrarimpares()
BEGIN
	DECLARE num INT;
	SET num=0;
	WHILE (num<=10) DO
		IF (num%2!=0) THEN
			SELECT num;
		END IF;
		SET num=num+1;
	END WHILE;
END $$

DELIMITER ;
		