#-- UN año es bisiesto si cumple los siguientes criterios
#-- es divisible entre 4
#-- SI es divisible entre 100 solo sera divisible entre 400

DROP FUNCTION IF EXISTS bisiesto;

DELIMITER $$

CREATE FUNCTION bisiesto(a INT) RETURNS BOOLEAN
BEGIN
	DECLARE b BOOLEAN;
	SET b=false;	
	
	IF MOD(a, 4)=0 THEN
		SET b=true;
	END IF;	
	IF MOD(a, 100)=0 THEN
		SET b=false;
	END IF;
	IF MOD(a, 400)=0 THEN
		SET b=true;
	END IF;
	
	RETURN b;
END $$

DELIMITER ;