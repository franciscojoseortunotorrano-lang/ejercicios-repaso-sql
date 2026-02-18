DROP PROCEDURE IF EXISTS positivo;

DELIMITER $$

CREATE PROCEDURE positivo(n INT)
BEGIN
	IF (n>0)THEN
		SELECT CONCAT(n," es positivo") AS "Número";
	ELSEIF (n<0) THEN
		SELECT CONCAT(n," es negativo") AS "Número";
	ELSE
		SELECT "Cero";
	END IF;
END $$

DELIMITER ;