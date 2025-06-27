SELECT * FROM users 
LEFT JOIN dni
ON users.user_id = dni.user_id;

SELECT name, dni_number FROM users 
LEFT JOIN dni
ON users.user_id = dni.user_id;


-- relacion n:m
SELECT users.name, languages.name
FROM users
LEFT JOIN users_languages ON users.user_id = users_languages.user_id
LEFT JOIN languages ON users_languages.language_id = languages.language_id;