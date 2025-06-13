SELECT *  FROM hello_mysql.users where email NOT LIKE "%gmail.com";
SELECT *  FROM hello_mysql.users where NOT email="maria.gomes@example.com" and age=28;
SELECT *  FROM hello_mysql.users where NOT email="maria.gomes@example.com" OR age=28;