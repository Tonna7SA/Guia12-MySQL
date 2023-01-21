/* Manos a la obra Actividad 04
*/
DROP DATABASE IF EXISTS superheroe;
CREATE DATABASE superheroe CHARACTER SET utf8mb4;
USE superheroe;

CREATE TABLE creador (
  id_creador INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
  nombre VARCHAR(20) NOT NULL
);


CREATE TABLE personaje (
  id_personaje INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre_real VARCHAR(20) NOT NULL,
  personaje VARCHAR(20) NOT NULL,
  inteligencia INT(10) NOT NULL,
  fuerza VARCHAR(10) NOT NULL,
  velocidad INT(11) NOT NULL,
  poder INT(11) NOT NULL,
  aparicion INT(11) NOT NULL,
  ocupacion VARCHAR(30) NULL,
  id_creador INT UNSIGNED NOT NULL,
  FOREIGN KEY (id_creador) REFERENCES creador(id_creador)
);
/*2.1. ¿Cuántas columnas posee la tabla “creador”?
a. 0
b. 1
c. 2 | X |
d. 3
2.2. ¿Cuántas columnas numéricas posee la tabla “personaje”?
a. 11  | X  |
b. 9
c. 10
d. 12
2.3. ¿Cuántas columnas de la tabla “personaje” pueden ser nulas?
a. Todas las columnas
b. 12
c. 10
d. Ninguna columna  | X |
2.4. ¿Qué significa la primera línea del script?
a. Selecciona la base de datos sobre la cual se aplicarán las siguientes sentencias.
b. Elimina la base de datos al finalizar de ejecutar el script.
c. Elimina la base de datos en caso de ya estar creada. | X |
d. Ninguna de las anteriores
3. Elimina la base de datos “superhéroes.sql”*/
