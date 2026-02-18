DROP PROCEDURE IF EXISTS suma;

DELIMITER $$

CREATE PROCEDURE suma(n INT)
BEGIN
	DECLARE num INT;
	DECLARE conta INT;
	SET conta=0;
	SET num=0;
	
	WHILE (conta<=n) DO
		SET num=(num+conta);
		SET conta=conta+1;
	END WHILE;
	
	SELECT num;
END $$

DELIMITER ;