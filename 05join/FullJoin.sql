SELECT * FROM users
JOIN dni;   -- EN MY SQL NO EXISTE EL FULL JOIN POR LO TANTO ASI ES COMO SE PUEDE HACER 


-- UNION EL WHERE EN ESTE EJEMPLO NO APORTA  NADA
SELECT users.user_id AS u_user_id, dni.user_id AS d_user_id
FROM users
LEFT JOIN 
	dni
ON	users.user_id = dni.user_id
UNION ALL
SELECT users.user_id AS u_user_id, dni.user_id AS d_user_id
FROM users
RIGHT JOIN dni
ON	users.user_id = dni.user_id
WHERE users.user_id IS NULL;