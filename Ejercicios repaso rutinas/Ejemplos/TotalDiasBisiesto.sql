#-- funcion que recibe como parametro una fecha
#-- Y devuelve el numero de dias que han transcurrido desde que comenzo el año
#--ten en cuenta los años bisiestos

DROP FUNCTION IF EXISTS totalDiasBis;

DELIMITER $$

CREATE FUNCTION totalDiasBis(f DATE) RETURNS INTEGER
BEGIN
	DECLARE total INT;
	SET total=TotalDias(f);
	IF (bisiesto(year(f)) AND month(f)>2) THEN
		SET total=total+1;	
	END IF;
	RETURN total;
END $$

DELIMITER ;