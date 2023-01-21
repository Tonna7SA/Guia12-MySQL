/* Manos a la obra Actividad 07
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
insert into creador values (1, 'Marvel');
insert into creador values (2, 'DC Comics');


insert into personaje values (1,'Bruce Banner','Hulk',160,'600 mil',75,98,1962,'Fisico Nuclear',1);
insert into personaje values (2,'Tony Stark','Ironman',170,'200 mil',70,113,1963,'Inventor Industrial',1);
insert into personaje values (3,'Thor Odison','Thor',145,'infinita',100,235,1962,'Rey de Asgard',1);
insert into personaje values (4,'Wanda Maximoff','Bruja Escarlata',170,'100 mil',90,345,1964,'Bruja',1);
insert into personaje values (5,'Carol Danvers','Capitana Marvel',157,'250 mil',85,128,1968,'Oficial de Inteligencia',1);
insert into personaje values (6,'Thanos','Thanos',170,'infinita',40,306,1973,'Adorador de la muerte',1);
insert into personaje values (7,'Peter Parker','Spiderman',165,'25 mil',80,74,1962,'Fotografo',1);
insert into personaje values (8,'Steve Rogers','Capitan America',145,'600',45,60,1941,'Oficial Federal',1);
insert into personaje values (9,'Bobby Drake','Ice Man',140,'2 mil',64,122,1963,'Cortador',1);
insert into personaje values (10,'Barry Allen','Flash',160,'10 mil',120,168,1956,'Cientifico forense',2);
insert into personaje values (11,'Bruce Wayne','Batman',170,'500',32,47,1939,'Hombre de negocios',1);
insert into personaje values (12,'Clarck Kent','Superman',165,'infinita',120,182,1948,'Reportero',2);
insert into personaje values (13,'Diana Prince','Mujer Maravilla',160,'infinita',95,127,1949,'Princesa Guerrera',2);

/* Pongamos a prueba esta nueva cláusula: order by. Seguiremos trabajando con la tabla 
“superhéroe”. Realiza una consulta que devuelva todos los registros ordenados por “inteligencia”.
*/

select * from personaje order by inteligencia;
