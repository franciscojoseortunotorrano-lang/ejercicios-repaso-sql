#--++-----------++
#--||  RUTINAS  ||
#--++-----------++

/*Los procedimientos se crean con CREATE PROCEDURE*/
CREATE PROCEDURE holaMundo()
SELECT "Hola Mundo" AS "Mi primera rutina";

/* Muestra esto LLamandolo mediante la sentencia CALL:
  CALL holaMundo; (Si no tiene parametros no hay que poner parentesis)
  +-------------------+
  | Mi primera rutina |
  +-------------------+
  | Hola Mundo        |
  +-------------------+*/
  
DROP PROCEDURE IF EXISTS holaMundo;

DELIMITER $$	

CREATE PROCEDURE holaMundo()
BEGIN 
SELECT "Hola Mundo" AS "Mi primera rutina";
SELECT "1º de DAW" AS "Mi Curso";
END $$

DELIMITER ;










































