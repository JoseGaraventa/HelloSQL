SELECT * FROM users 
RIGHT JOIN dni
ON users.user_id = dni.user_id;

SELECT name, dni_number FROM users 
RIGHT JOIN dni
ON users.user_id = dni.user_id;

-- relacion n:m
SELECT users.name, languages.name
FROM users
RIGHT JOIN users_languages ON users.user_id = users_languages.user_id
RIGHT JOIN languages ON users_languages.language_id = languages.language_id;