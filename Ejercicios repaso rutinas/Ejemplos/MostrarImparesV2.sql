DROP PROCEDURE IF EXISTS mostrarimpares2;

DELIMITER $$

CREATE PROCEDURE mostrarimpares2()
BEGIN
	DECLARE num INT;
	SET num=0;
	REPEAT
		SET num=num+1;
		IF (num%2!=0) THEN
			SELECT num;
		END IF;
	UNTIL (num>=10) 
	END REPEAT;
END $$

DELIMITER ;
		