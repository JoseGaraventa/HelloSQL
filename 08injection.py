# SQL Injection es una vulnerabilidad de seguridad que ocurre cuando una aplicación permite que un usuario inyecte comandos SQL maliciosos dentro de una consulta, generalmente a través de campos de entrada sin validación o sin uso de consultas preparadas.

#Esto puede permitir al atacante leer, modificar o eliminar datos, o incluso tomar control de toda la base de datos.

# Ejemplo vulnerable (⚠️ NO usar así):
#Supongamos que tenés un código en Python usando mysql-connector-python así:

#python
#Copiar
#Editar


import mysql.connector

conn = mysql.connector.connect(
    host="localhost",
    user="usuario",
    password="clave",
    database="mi_base"
)

cursor = conn.cursor()

usuario = input("Usuario: ")
contrasena = input("Contraseña: ")

# ⚠️ Consulta vulnerable a SQL Injection
query = f"SELECT * FROM usuarios WHERE usuario = '{usuario}' AND contrasena = '{contrasena}'"
cursor.execute(query)

resultados = cursor.fetchall()
print(resultados)
#Si el usuario ingresa:

#bash
#Copiar
#Editar
#Usuario: ' OR '1'='1
#Contraseña: ' OR '1'='1
#La consulta que se ejecuta es:

#sql
#Copiar
#Editar
#SELECT * FROM usuarios WHERE usuario = '' OR '1'='1' AND contrasena = '' OR '1'='1'
#Y esto devuelve todos los usuarios, permitiendo iniciar sesión sin credenciales válidas.

# Forma segura con consultas preparadas (protegida):
#python
#Copiar
#Editar
query = "SELECT * FROM usuarios WHERE usuario = %s AND contrasena = %s"
cursor.execute(query, (usuario, contrasena))
#Usar parámetros preparados (%s) impide que el contenido ingresado se interprete como código SQL.