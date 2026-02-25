DROP PROCEDURE IF EXISTS FechaHoy;

DELIMITER $$

CREATE PROCEDURE FechaHoy()
BEGIN
	DECLARE fecha DATE;
	SET fecha=CURRENT_DATE;
	CASE MONTH(fecha)
		WHEN 1 THEN SELECT CONCAT(Day(fecha)," de Enero de ",YEAR(fecha));
		WHEN 2 THEN SELECT CONCAT(Day(fecha)," de Febrero de ",YEAR(fecha));
		WHEN 3 THEN SELECT CONCAT(Day(fecha)," de Marzo de ",YEAR(fecha));
		WHEN 4 THEN SELECT CONCAT(Day(fecha)," de Abril de ",YEAR(fecha));
		WHEN 5 THEN SELECT CONCAT(Day(fecha)," de Mayo de ",YEAR(fecha));
		WHEN 6 THEN SELECT CONCAT(Day(fecha)," de Junio de ",YEAR(fecha));
		WHEN 7 THEN SELECT CONCAT(Day(fecha)," de Julio de ",YEAR(fecha));
		WHEN 8 THEN SELECT CONCAT(Day(fecha)," de Agosto de ",YEAR(fecha));
		WHEN 9 THEN SELECT CONCAT(Day(fecha)," de Septiembre de ",YEAR(fecha));
		WHEN 10 THEN SELECT CONCAT(Day(fecha)," de Octubre de ",YEAR(fecha));
		WHEN 11 THEN SELECT CONCAT(Day(fecha)," de Noviembre de ",YEAR(fecha));
		WHEN 12 THEN SELECT CONCAT(Day(fecha)," de Diciembre de ",YEAR(fecha));
		ELSE SELECT "No es una fecha valida";
	END CASE;
		
END $$

DELIMITER ;