import mysql.connector

config = {
    "host": "127.0.0.1",
    "port": "3306",
    "database": "hello_mysql",
    "user": "root",
    "password": "Rumiante007." 
}

connection = mysql.connector.connect(**config)
cursor = connection.cursor()

query = "SELECT * FROM USERS"
cursor.execute(query)
result = cursor.fetchall()

for row in result:
    print(row)

cursor.close()
connection.close()