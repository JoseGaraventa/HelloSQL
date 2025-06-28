CREATE TRIGGER tg_email
BEFORE /AFTER/INSERT/UPDATE/
ON users;

/*CREATE TRIGGER tg_email: crea un trigger llamado tg_email.

BEFORE / AFTER / INSERT / UPDATE: acá deberías elegir una sola combinación, por ejemplo:

BEFORE INSERT: antes de insertar una fila.

AFTER UPDATE: después de actualizar una fila.

ON users: el trigger actúa sobre la tabla users. */

DELIMITER $$

CREATE TRIGGER tg_email
AFTER UPDATE ON users
FOR EACH ROW
BEGIN
    IF OLD.email <> NEW.email THEN
        INSERT INTO email_history(user_id, email)
        VALUES (OLD.user_id, OLD.email);
    END IF;
END$$

DELIMITER ;

/* Este trigger llamado tg_email se ejecuta automáticamente después de actualizar una fila en la tabla users. Si el email cambió, guarda el email anterior y el user_id en la tabla email_history, para registrar el cambio. Usa OLD para acceder al valor viejo y NEW al nuevo. El DELIMITER se cambia temporalmente para permitir usar ; dentro del bloque BEGIN...END.*/

DELIMITER $$

CREATE TRIGGER tg_email
AFTER UPDATE ON users
FOR EACH ROW
BEGIN
    IF OLD.email <> NEW.email THEN
        INSERT INTO email_history(user_id, email)
        VALUES (OLD.user_id, OLD.email);
    END IF;
END$$

DELIMITER ;

UPDATE users SET email= "gafa@gafitas@gmail" WHERE user_id=1;

select * from email_history;