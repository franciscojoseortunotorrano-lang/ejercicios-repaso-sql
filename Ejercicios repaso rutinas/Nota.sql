DROP PROCEDURE IF EXISTS nota;

DELIMITER $$

CREATE PROCEDURE nota(num FLOAT)
BEGIN
	IF(num<5)THEN
		SELECT "Insuficiente" AS "nota";
	elseif(num>=5 AND num<6)THEN
		SELECT "Aprobado" AS "nota";
	elseif(num>=6 AND num<7)THEN
		SELECT "Bien" AS "nota";
	elseif(num>=7 AND num<9)THEN
		SELECT "Notable" AS "nota";
	elseif(num>=9 AND num<=10)THEN
		SELECT "Sobresaliente" AS "nota";
	ELSE
		SELECT "Nota invalida" AS "nota";
	END IF;
END $$

DELIMITER ;