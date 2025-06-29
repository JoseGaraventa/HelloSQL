/*Una transacción es un conjunto de operaciones que se ejecutan como una unidad. Si todas 
las operaciones se completan correctamente, se confirman con COMMIT. Si alguna falla, se cancelan todas con ROLLBACK.
Esto asegura que la base de datos nunca quede en un estado intermedio o inconsistente, 
por ejemplo, cuando hacés transferencias bancarias, actualizás varios registros, etc.*/

CREATE TABLE cuentas (
  id INT PRIMARY KEY,
  titular VARCHAR(100),
  saldo DECIMAL(10,2)
);

INSERT INTO cuentas VALUES (1, 'Juan', 1000.00), (2, 'María', 500.00);

/* 
Ahora queremos transferir $200 de Juan a María. Esto implica dos pasos:

Restarle $200 a Juan.

Sumarle $200 a María.

*/

START TRANSACTION;

UPDATE cuentas SET saldo = saldo - 200 WHERE id = 1;
UPDATE cuentas SET saldo = saldo + 200 WHERE id = 2;

COMMIT;

/*
START TRANSACTION: Inicia la transacción.

UPDATE ...: Realiza los cambios.

COMMIT: Confirma todo. Los cambios quedan guardados.

Si por algún motivo la segunda línea falla (por ejemplo, la cuenta 2 no existe), la base de datos quedaría en un estado incorrecto: a Juan le sacaron la plata, pero María no la recibió.
*/

START TRANSACTION;

-- Simulación: Juan no tiene saldo suficiente
UPDATE cuentas SET saldo = saldo - 200 WHERE id = 1 AND saldo >= 200;

-- Comprobamos si la operación fue exitosa
-- Supongamos que ninguna fila se afectó, lo detectamos con código de aplicación o chequeo adicional
-- Entonces hacemos rollback

ROLLBACK;

/*
¿Cuándo se usa?
Transferencias de dinero.

Ventas con múltiples pasos (actualizar stock, registrar factura, etc.).

Migraciones de datos donde se afectan muchas tablas.

Cualquier proceso crítico que debe ser "todo o nada".
*/