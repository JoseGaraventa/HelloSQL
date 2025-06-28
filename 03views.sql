CREATE VIEW v_adult_users_age AS
SELECT name, age 
FROM users
WHERE AGE >= 18;

SELECT * FROM v_adult_users_age;

/* Este código crea una vista llamada v_adult_users_age, que muestra solo los usuarios mayores de edad (age >= 18) con sus nombres y edades. Luego, el SELECT * consulta esa vista como si fuera una tabla.*/

-- PARA BORRAR UN VIEW
DROP VIEW v_adult_users_age;