DROP PROCEDURE IF EXISTS Fecha2;

CREATE PROCEDURE Fecha2(IN f DATE)
	SELECT CONCAT("Dia: ", DAY(f), "\n", "Mes: ",MONTH(f), "\n", "Año: ", YEAR(f))AS fecha;
	