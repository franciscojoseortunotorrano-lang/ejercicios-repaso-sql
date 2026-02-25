#-- funcion que recibe como parametro una fecha 
#--y devuelve el numero de dias que han transcurrido desde que empezo el año
#--Ejemplos: 5 de enero --> 5
#--			 1 de febrero --> 32
#--			 31 de diciembre --> 365
#-- ignora si es o no bisiesto

DROP FUNCTION IF EXISTS TotalDias;

DELIMITER $$

CREATE FUNCTION TotalDias(f DATE) RETURNS INT
BEGIN
	DECLARE total INT;
	SET total=day(f);
	
	CASE month(f)
		WHEN 1 THEN SET total=total+0;
		WHEN 2 THEN SET total=total+31;
		WHEN 3 THEN SET total=total+31+28;
		WHEN 4 THEN SET total=total+31+28+31;
		WHEN 5 THEN SET total=total+31+28+31+30;
		WHEN 6 THEN SET total=total+31+28+31+30+31;
		WHEN 7 THEN SET total=total+31+28+31+30+31+30;
		WHEN 8 THEN SET total=total+31+28+31+30+31+30+31;
		WHEN 9 THEN SET total=total+31+28+31+30+31+30+31+31;
		WHEN 10 THEN SET total=total+31+28+31+30+31+30+31+31+30;
		WHEN 11 THEN SET total=total+31+28+31+30+31+30+31+31+30+31;
		WHEN 12 THEN SET total=total+31+28+31+30+31+30+31+31+30+31+30;
	END CASE;
	RETURN total;
END $$

DELIMITER ;