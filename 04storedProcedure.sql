DELIMITER //

CREATE PROCEDURE p_all_users ()
BEGIN 
	SELECT * FROM users;
END//

CALL p_all_users

/*Crea un procedimiento llamado p_all_users que, al ser llamado con CALL, muestra todos los registros de la tabla users. Usa DELIMITER // para definir bloques.*/


DELIMITER //

DROP PROCEDURE IF EXISTS p_age_users//

CREATE PROCEDURE p_age_users (IN age_param INT)
BEGIN 
	SELECT * FROM users WHERE age = age_param;
END//

DELIMITER ;

CALL p_age_users(30);

/*El código crea un procedimiento llamado p_age_users que recibe un número (age_param) y muestra todos los usuarios cuya edad sea igual a ese número, usando CALL p_age_users(valor).*/
