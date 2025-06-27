SELECT * FROM users 
INNER JOIN dni  -- aca traia todos los datos no tenia la clausula ON para especificar. 

SELECT * FROM users 
INNER JOIN dni
ON users.user_id = dni.user_id;  -- solo terae los usuarios con dni

SELECT * FROM users 
JOIN dni
ON users.user_id = dni.user_id
ORDER BY age ASC; -- lE AGREGANOS EL ORDER BY PARSA ORDENANRLO DE ACUERDO A LA EDAD DE LOS USUARIOS

SELECT name, dni_number FROM users 
JOIN dni
ON users.user_id = dni.user_id
ORDER BY age ASC;  -- solo traemos los nombres y numeros de dni 

-- APLICADO EN RELACIONES 1:N

SELECT * FROM users
JOIN companies 
ON users.company_id = companies.company_id;


SELECT companies.name, users.name FROM companies
JOIN users 
ON companies.company_id = users.company_id;

-- relacion n:m join de tres tablas incluye la puente 


SELECT users.name, languages.name
FROM users_languages
JOIN users ON users_languages.user_id=users.user_id
JOIN languages ON users_languages.language_id=languages.language_id



