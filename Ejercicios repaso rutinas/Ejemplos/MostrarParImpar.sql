DELIMITER $$

DROP PROCEDURE IF EXISTS mostrarParImpar $$

CREATE PROCEDURE mostrarParImpar(IN numero INT)
BEGIN
	IF(esPar(numero)) THEN
		SELECT CONCAT(numero," es par") AS "par/impar";
	ELSE
		SELECT CONCAT(numero," es impar") AS "par/impar";
	END IF;
END$$

DELIMITER ;






