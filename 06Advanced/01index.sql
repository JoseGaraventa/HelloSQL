CREATE INDEX idx_name ON users(name);
-- como usarlo
CREATE INDEX idx_name ON users(name);


-- Crea un índice único llamado idx_completename en la tabla users, combinando los campos name y surname para evitar duplicados.
-- UNIQUE asegura que los valores combinados de las columnas (name, surname en este caso) no se repitan en ninguna fila.
--Es decir, no podrá haber dos usuarios con el mismo name y surname juntos.


CREATE UNIQUE INDEX idx_completename ON users(name, surname);

-- borro el priemr indice 
DROP INDEX idx_name ON users;