#-- Funcion que calcula el area de un rectangulo
#--area=a*b siendo a y b distintos
DELIMITER $$

CREATE FUNCTION areaRectangulo(a INT, b INT) RETURNS INT
BEGIN
	DECLARE area INT;
	SET area=a*b;
	RETURN area;
END $$

DELIMITER ;