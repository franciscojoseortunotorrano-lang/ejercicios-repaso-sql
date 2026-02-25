DROP PROCEDURE IF EXISTS sumaNpares;

DELIMITER $$

CREATE PROCEDURE sumaNpares(N INT)
BEGIN
	DECLARE conta INT;
	DECLARE RES INT;
	DECLARE num INT;
	
	SET conta=1;
	SET num=1;
	SET res=0;
	
	WHILE(conta<=N)DO
		IF(num%2=0)THEN
			SET res=res+num;
			SET conta=conta+1;
		END IF;
		SET num=num+1;
	END WHILE;
	SELECT CONCAT("resultado: ",res) AS "Suma de los n numeros pares";
END $$

DELIMITER ;

