/* Concurrencia significa que varios usuarios o procesos acceden y modifican la base de datos al mismo tiempo.

Si no se maneja bien, pueden ocurrir errores como:

Lectura sucia (dirty read): un proceso lee datos no confirmados por otro.

Lectura no repetible: un proceso lee un dato, otro lo modifica, y al volver a leer, obtiene un valor distinto.

Fantasmas (phantom reads): un proceso ve filas nuevas insertadas por otro mientras trabaja.

¿Cómo se controla la concurrencia?
Con dos mecanismos:

1. Transacciones
Te aseguran que todo se haga de forma atómica (como ya vimos).

2. Bloqueos (Locks)
LOCK de lectura: evita que otros escriban mientras se está leyendo.

LOCK de escritura: evita que otros lean o escriban mientras se está escribiendo.

MySQL maneja esto automáticamente. */

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
START TRANSACTION;
-- operaciones
COMMIT;

/*

1. SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
Estás definiendo el nivel de aislamiento de la transacción.

Garantiza que ninguna otra transacción pueda leer o escribir los datos que vos estés usando hasta que vos termines.

Niveles de aislamiento comunes:

READ UNCOMMITTED: permite lecturas sucias (no recomendable).

READ COMMITTED: solo lee datos confirmados.

REPEATABLE READ: bloquea filas leídas, evita cambios hasta el COMMIT.

SERIALIZABLE: el más seguro; evita todo tipo de conflictos pero es más lento.

2. START TRANSACTION;
Inicia una transacción manual.

Desde este punto, todas las operaciones (SELECT, INSERT, UPDATE, DELETE) no se ejecutan de forma definitiva hasta que se haga el COMMIT.

3. -- operaciones
Aquí irían tus consultas: SELECT, UPDATE, etc.

Ejemplo: modificar una cuenta bancaria, insertar una factura, etc.

Las operaciones están protegidas por el aislamiento SERIALIZABLE, lo cual bloquea a otros usuarios hasta que vos termines.

4. COMMIT;
Finaliza y confirma la transacción.

A partir de acá, los cambios se vuelven visibles para otros usuarios.

Si no hacés COMMIT, los cambios quedan pendientes.

Si algo falla, podrías hacer un ROLLBACK en lugar de COMMIT para cancelar todo.