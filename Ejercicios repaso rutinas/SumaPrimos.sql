DROP PROCEDURE IF EXISTS sumaPrimos;

DELIMITER $$

CREATE PROCEDURE sumaPrimos(n INT)
BEGIN
	DECLARE num INT;
	DECLARE conta INT;
	SET conta=0;
	SET num=0;
	
	WHILE (conta<=n) DO
		IF(esprimo(conta)=true)THEN
			SET num=(num+conta);
		END IF;
		SET conta=conta+1;
	END WHILE;
	
	SELECT num AS"suma primos";
END $$

DELIMITER ;