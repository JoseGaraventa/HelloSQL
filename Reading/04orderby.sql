SELECT *  FROM hello_mysql.users order by age; 
SELECT *  FROM hello_mysql.users order by age ASC;  /* ORDEN ASCENDENTE ES POR DEFECTO */
SELECT name  FROM hello_mysql.users where email="jaja@gmail.com" order by age DESC;