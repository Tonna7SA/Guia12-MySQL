/* Ejercicio Aprendizaje 01*/

DROP DATABASE IF EXISTS personal;
CREATE DATABASE personal CHARACTER SET utf8mb4;
USE personal;

CREATE TABLE departamento (
  id_depto INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
  nombre_depto VARCHAR(20) NOT NULL,
  ciudad VARCHAR(15) NULL,
  codigo_director VARCHAR(12) NULL
);
select * from departamento;

CREATE TABLE empleado (
  id_empleado INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre CHAR(30) NOT NULL,
  sexo_empleado CHAR(1) NOT NULL,
  fecha_nacimiento DATE NOT NULL,
  fecha_incorporacion DATE NOT NULL,
  salario FLOAT NOT NULL,
  comision FLOAT NOT NULL,
  cargo VARCHAR(15) NOT NULL,
  cod_jefe VARCHAR(12) NULL,  
  id_depto INT UNSIGNED NOT NULL,
  FOREIGN KEY (id_depto) REFERENCES departamento(id_depto)
  );
select * from empleado;

-- Insertar datos en la tabla `departamento`

INSERT INTO `departamento` VALUES (1000,'GERENCIA','CIUDAD REAL','31.840.269');
INSERT INTO `departamento` VALUES (1500,'PRODUCCIÓN','CIUDAD REAL','16.211.383');
INSERT INTO `departamento` VALUES (2000,'VENTAS','CIUDAD REAL','31.178.144');
INSERT INTO `departamento` VALUES (2100,'VENTAS','BARCELONA','16.211.383');
INSERT INTO `departamento` VALUES (2200,'VENTAS','VALENCIA','16.211.383');
INSERT INTO `departamento` VALUES (2300,'VENTAS','MADRID','16.759.060');
INSERT INTO `departamento` VALUES (3000,'INVESTIGACIÓN','CIUDAD REAL','16.759.060');
INSERT INTO `departamento` VALUES (3500,'MERCADEO','CIUDAD REAL','22.222.222');
INSERT INTO `departamento` VALUES (4000,'MANTENIMIENTO','CIUDAD REAL','333.333.333');
INSERT INTO `departamento` VALUES (4100,'MANTENIMIENTO','BARCELONA','16.759.060');
INSERT INTO `departamento` VALUES (4200,'MANTENIMIENTO','VALENCIA','16.759.060');
INSERT INTO `departamento` VALUES (4300,'MANTENIMIENTO','MADRID','16.759.060');

-- Insertar datos en la tabla `empleado`

INSERT INTO `empleado` VALUES (222,'José Giraldo','M','1985-01-20','2000-11-01',1200000,400000,'Asesor','22.222.222',3500);
INSERT INTO `empleado` VALUES (333,'Pedro Blanco','M','1987-10-28','2000-10-01',800000,3000000,'Vendedor','31.178.144',2000);
INSERT INTO `empleado` VALUES (444,'Jesús Alfonso','M','1988-03-14','2000-10-01',800000,3500000,'Vendedor','31.178.144',2000);
INSERT INTO `empleado` VALUES (555,'Julián Mora','M','1989-07-03','2000-10-01',800000,3100000,'Vendedor','31.178.144',2200);
INSERT INTO `empleado` VALUES (666,'Manuel Millán','M','1990-12-08','2004-06-01',800000,3700000,'Vendedor','31.178.144',2300);
INSERT INTO `empleado` VALUES (777,'Marcos Cortez','M','1986-06-23','2000-04-16',2550000,500000,'Mecánico','333.333.333',4000);
INSERT INTO `empleado` VALUES (782,'Antonio Gil','M','1980-01-23','2010-04-16',850000,1500000,'Técnico','16.211.383',1500);
INSERT INTO `empleado` VALUES (219,'Melissa Roa','F','1960-06-19','2001-03-16',2250000,2500000,'Vendedor','31.178.144',2100);
INSERT INTO `empleado` VALUES (111,'Irene Díaz','F','1979-09-28','2004-06-01',1050000,200000,'Mecánico','333.333.333',4200);
INSERT INTO `empleado` VALUES (383,'Luis Pérez','M','1956-02-25','2000-01-01',5050000,0,'Director','31.840.269',1500);
INSERT INTO `empleado` VALUES (060,'Darío Casas','M','1960-04-05','1992-11-01',4500000,500000,'Investigador','31.840.269',3000);
INSERT INTO `empleado` VALUES (802,'William Daza','M','1982-10-09','1999-12-16',2250000,1000000,'Investigador','16.759.060',3000);
INSERT INTO `empleado` VALUES (221,'Carla López','F','1975-05-11','2005-07-16',4500000,500000,'Jefe Mercadeo','31.840.269',3500);
INSERT INTO `empleado` VALUES (331,'Carlos Rozo','M','1975-05-11','2001-09-16',750000,500000,'Vigilante','31.840.269',3500);
INSERT INTO `empleado` VALUES (099,'Diana Solarte','F','1957-11-19','1990-05-16',1250000,500000,'Secretaria','31.840.269',1000);
INSERT INTO `empleado` VALUES (144,'Rosa Angulo','F','1957-03-15','1998-08-16',3250000,3500000,'Jefe Ventas','31.840.269',2000);
INSERT INTO `empleado` VALUES (269,'María Rojas','F','1959-01-15','1990-05-16',6250000,1500000,'Gerente',NULL,1000);
INSERT INTO `empleado` VALUES (343,'Elisa Rojas','F','1979-09-28','2004-06-01',3000000,1000000,'Jefe Mecánicos','31.840.269',4000);
INSERT INTO `empleado` VALUES (334,'Marisol Pulido','F','1979-10-01','1990-05-16',3250000,1000000,'Investigador','16.759.060',3000);
INSERT INTO `empleado` VALUES (335,'Ana Moreno','F','1992-01-05','2004-06-01',1200000,400000,'Secretaria','16.759.060',3000);
INSERT INTO `empleado` VALUES (336,'Carolina Ríos','F','1992-02-15','2000-10-01',1250000,500000,'Secretaria','16.211.383',1500);
INSERT INTO `empleado` VALUES (337,'Edith Muñoz','F','1992-03-31','2000-10-01',800000,3600000,'Vendedor','31.178.144',2100);
INSERT INTO `empleado` VALUES (338,'Abel Gómez','M','1939-12-24','2000-10-01',1050000,200000,'Mecánico','333.333.333',4300);
INSERT INTO `empleado` VALUES (689,'Mario Llano','M','1945-08-30','1990-05-16',2250000,2500000,'Vendedor','31.178.144',2300);
INSERT INTO `empleado` VALUES (785,'Joaquín Rosas','M','1947-07-07','1990-05-16',2250000,2500000,'Vendedor','31.178.144',2200);
INSERT INTO `empleado` VALUES (898,'Iván Duarte','M','1955-08-12','1998-05-16',1050000,200000,'Mecánico','333.333.333',4100);

/*a) A continuación, realizar las siguientes consultas sobre la base de datos personal:

1. Obtener los datos completos de los empleados.
*/
select * from empleado;

/*
2. Obtener los datos completos de los departamentos.
*/
select * from departamento; 

/*
3. Listar el nombre de los departamentos.
*/
select nombre_depto from departamento;

/*
4. Obtener el nombre y salario de todos los empleados.
*/
select nombre,salario from empleado;

/*
5. Listar todas las comisiones.
*/
select comision from empleado;

/*
6. Obtener los datos de los empleados cuyo cargo sea ‘Secretaria’.
*/
select * from empleado where cargo = 'secretaria';

/*
7. Obtener los datos de los empleados vendedores, ordenados por nombre 
alfabéticamente.
*/
select * from empleado where cargo = 'vendedor' order by nombre;

/*
8. Obtener el nombre y cargo de todos los empleados, ordenados por salario de menor a 
mayor.
*/
select nombre,cargo from empleado order by salario;

/*
9. Elabore un listado donde para cada fila, figure el alias ‘Nombre’ y ‘Cargo’ para las 
respectivas tablas de empleados.
*/
select nombre as 'Alias_nombre' from empleado;
select nombre as 'Nombrecito', cargo as 'Carguito' from empleado;
/*
10. Listar los salarios y comisiones de los empleados del departamento 2000, ordenado 
por comisión de menor a mayor.
*/
select nombre,salario,comision from empleado where id_depto = 2000 order by comision;

/*
11. Obtener el valor total a pagar que resulta de sumar el salario y la comisión de los 
empleados del departamento 3000 una bonificación de 500, en orden alfabético del 
empleado.
*/
select nombre, salario, comision, sum(salario + comision + 500) as 'Salario+Comision+500' from empleado where id_depto = 3000 group by nombre,salario,comision  order by nombre;

/*
12. Muestra los empleados cuyo nombre empiece con la letra J.
*/
select * from empleado where nombre like 'j%';

/*
13. Listar el salario, la comisión, el salario total (salario + comisión) y nombre, de aquellos 
empleados que tienen comisión superior a 1000.
*/
select nombre,salario,comision,sum(salario + comision) as 'SUMA' from empleado where comision > 1000 group by nombre,salario,comision;

/*
14. Obtener un listado similar al anterior, pero de aquellos empleados que NO tienen 
comisión.
*/
select salario,comision,sum(salario + comision) as 'SUMA',nombre from empleado where comision = 0 group by nombre,salario,comision;

/*
15. Obtener la lista de los empleados que ganan una comisión superior a su sueldo.
*/
select * from empleado where comision > salario ;

/*
16. Listar los empleados cuya comisión es menor o igual que el 30% de su sueldo.
*/
select nombre, salario, sum(salario * 30 / 100) as 'Salario 30%' from empleado where comision <= (salario * 30 / 100) group by nombre, salario, comision;

/*
17. Hallar los empleados cuyo nombre no contiene la cadena “MA”
*/
select * from empleado where nombre not like '%ma%';
/*
18. Obtener los nombres de los departamentos que sean “Ventas” ni “Investigación” ni 
‘Mantenimiento.
*/
select * from departamento where nombre_depto = 'ventas' or nombre_depto = 'investigacion' or nombre_depto = 'mantenimiento';

/*
19. Ahora obtener los nombres de los departamentos que no sean “Ventas” ni 
“Investigación” ni ‘Mantenimiento.
*/
select * from departamento where nombre_depto  not like 'ventas' and nombre_depto  not like 'investigacion' and nombre_depto  not like 'mantenimiento';

/*
20. Mostrar el salario más alto de la empresa.
*/
select nombre, salario from empleado where salario = (select max(salario) from empleado);

/*
21. Mostrar el nombre del último empleado de la lista por orden alfabético.
*/
select max(nombre) from empleado;

/*
22. Hallar el salario más alto, el más bajo y la diferencia entre ellos.
*/
select max(salario),min(salario),max(salario)-min(salario) as 'diferencia' from empleado;

/*
23. Hallar el salario promedio por departamento.
*/
select d.nombre_depto, sum(salario)/count(*)
from departamento d, empleado e
where d.id_depto = e.id_depto group by d.nombre_depto;

/*
Consultas con Having 
24. Hallar los departamentos que tienen más de tres empleados. Mostrar el número de 
empleados de esos departamentos.
*/
select d.nombre_depto, count(d.id_depto) as 'Contador'
from departamento d, empleado e
where d.id_depto = e.id_depto group by d.nombre_depto
having contador >= 3;

/*
25. Mostrar el código y nombre de cada jefe, junto al número de empleados que dirige. 
Solo los que tengan más de dos empleados (2 incluido).
*/
select e.cod_jefe, count(e.cod_jefe) as 'Num_Empleados'
from departamento d,empleado e 
where d.id_depto = e.id_depto group by e.cod_jefe
having count(*) >= 2
order by Num_Empleados desc;

/*
26. Hallar los departamentos que no tienen empleados
Consulta con Subconsulta
*/
select * from empleado;
select * from departamento;
select d.nombre_depto, count(d.nombre_depto) as 'Sin_Empleados'
from departamento d,empleado e 
where d.id_depto = e.id_depto group by d.nombre_depto
having count(*) = 0;

/*
27. Mostrar la lista de los empleados cuyo salario es mayor o igual que el promedio de la 
empresa. Ordenarlo por departamento.
*/
select nombre, salario from empleado where salario > (select avg(salario) from empleado) order by salario desc;