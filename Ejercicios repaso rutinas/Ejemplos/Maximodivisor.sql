DROP FUNCTION IF EXISTS MayorDivisor;

DELIMITER $$

CREATE FUNCTION Mayordivisor(num INT) RETURNS INT
BEGIN
	DECLARE i INT; 
	DECLARE maxDiv INT;
	SET maxDiv=0;
	SET i=1;
	WHILE (i<=num/2) DO
		IF(divisible(num,i))THEN
			SET maxDiv=i;
		END IF;
		SET i=i+1;
	END WHILE;
	RETURN maxDiv;
END $$

DELIMITER ;