DELIMITER $$

DROP PROCEDURE IF EXISTS Fecha $$

CREATE PROCEDURE fecha(IN f DATE)
BEGIN
	DECLARE d,m,a INT;
	SET d=day(f);
	SET m=month(f);
	SET a=year(f);
	SELECT CONCAT("Dia: ",d) AS "fecha";
	SELECT CONCAT("Mes: ",m) AS "fecha";
	SELECT CONCAT("Año: ",a) AS "fecha";

END $$

DELIMITER ;