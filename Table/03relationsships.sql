create table dni (
	dni_id int auto_increment primary key,
    dni_number int not null,
    user_id int,
    unique(dni_id),
    FOREIGN KEY (user_id) REFERENCES users (user_id)
    );

ALTER TABLE users
    ADD CONSTRAINT fk_companies
    FOREIGN KEY(company_id) REFERENCES companies(company_id)

CREATE TABLE languages(
	language_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) not null
    );


-- TABLA PUENTE ENTRE LENGUAJES Y USUARIOS 

CREATE TABLE users_languages(
	users_language_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id int,
    language_id int,
	FOREIGN KEY(user_id) REFERENCES users(user_id),
	FOREIGN KEY(language_id) REFERENCES languages(language_id),
    UNIQUE (user_id, language_id)
    );

-- Inserts

INSERT INTO dni ( dni_number, user_id) VALUES (1111111, 1);   -- el id_dni no se pone porque esta con el autocremental

INSERT INTO dni ( dni_number, user_id) VALUES (1111112, 2);


INSERT INTO dni ( dni_number, user_id) VALUES (1111113, 3);

-- le ponemos contenido a la tabla de companys
INSERT INTO  companies (name) VALUES (
"RUXXOS");

INSERT INTO  companies (name) VALUES (
"APPLE");
INSERT INTO  companies (name) VALUES (
"GUCCI");

-- le asignmos companias a los usuarios
UPDATE users SET company_id=1 WHERE user_id=1;
UPDATE users SET company_id=2 WHERE user_id=3;
UPDATE users SET company_id=3 WHERE user_id=4;
UPDATE users SET company_id=1 WHERE user_id=7;

