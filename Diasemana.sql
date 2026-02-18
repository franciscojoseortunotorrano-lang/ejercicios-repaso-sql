DROP FUNCTION IF EXISTS diasemana;

DELIMITER $$

CREATE FUNCTION diasemana(num INT) RETURNS CHAR(20)
BEGIN 
	DECLARE dia CHAR(20);
	CASE num
		WHEN 1 THEN SET dia="Lunes";
		WHEN 2 THEN SET dia="Martes";
		WHEN 3 THEN SET dia="Miercoles";
		WHEN 4 THEN SET dia="Jueves";
		WHEN 5 THEN SET dia="Viernes";
		WHEN 6 THEN SET dia="Sabado";
		WHEN 7 THEN SET dia="Domingo";
		ELSE SET dia="NO ES UN DIA VALIDO";
	END CASE;
	RETURN dia;
END $$

DELIMITER ;