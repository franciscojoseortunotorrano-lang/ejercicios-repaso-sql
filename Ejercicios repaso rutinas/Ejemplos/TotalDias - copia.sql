#-- funcion que recibe como parametro una fecha 
#--y devuelve el numero de dias que han transcurrido desde que empezo el año
#--Ejemplos: 5 de enero --> 5
#--			 1 de febrero --> 32
#--			 31 de diciembre --> 365
#-- ignora si es o no bisiesto

DROP FUNCTION IF EXISTS TotalDias2;

DELIMITER $$

CREATE FUNCTION TotalDias2(f DATE) RETURNS INT
BEGIN
	DECLARE total INT;
	SET total=day(f);
	
	DECLARE ND INT;
	SET ND=0;
	DECLARE total INT;
	SET total=day(f);
	DECLARE i INT;
	SET i=0;
	WHILE i<(month(f)-1) DO
		SET ND=30;
		IF(i=4 OR i=6 OR i=9 OR i=11) THEN
			SET ND=31;
		END IF;
		
		IF(i=2)THEN
			SET ND=28
		END IF;
		
		SET total=total+ND;
		SET i=i+1;
	END WHILE;
	
	RETURN total;
END $$

DELIMITER ;