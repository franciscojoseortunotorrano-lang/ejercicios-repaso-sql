DROP PROCEDURE IF EXISTS esVocal;

DELIMITER $$
CREATE PROCEDURE esVocal(letra char)
BEGIN
	IF (UPPER(letra)='A' OR UPPER(letra)='E' OR UPPER(letra)='I' OR UPPER(letra)='O' OR UPPER(letra)='U') THEN
		SELECT CONCAT(letra," es una vocal") AS "esVocal";
	ELSE
		SELECT CONCAT(letra," no es una vocal") AS "esVocal";
	END IF;
END $$

DELIMITER ;