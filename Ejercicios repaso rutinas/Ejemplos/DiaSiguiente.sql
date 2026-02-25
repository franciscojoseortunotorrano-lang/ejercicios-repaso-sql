DROP PROCEDURE DiaSiguiente;

DELIMITER $$

CREATE PROCEDURE DiaSiguiente(d INT, m INT, y INT)
BEGIN
	DECLARE nd INT;
	SET nd=31;
	IF(ValidarFecha(d,m,y))THEN
		IF(m=4 OR m=6 OR m=9 OR m=11)THEN
			SET nd=30;
		END IF;
		IF(m=2)THEN
			SET nd=28;
		END IF;
		SET d=d+1;
		IF(d>nd)THEN
			SET d=1;
			SET m=m+1;
		END IF;
		IF(m>12)THEN
			SET m=1;
			SET y=y+1;
		END IF;
		IF(y=0)THEN
			SET y=1;
		END IF;
		SELECT CONCAT(d,"/",m,"/",y)AS "FECHA AL DIA SIGUENTE";
	ELSE
		SELECT "Fecha incorrecta";
	END IF;
END $$

DELIMITER ;