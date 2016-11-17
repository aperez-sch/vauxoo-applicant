-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.
CREATE TABLE employee_department(
	id serial primary key not null,	
	name varchar (20) unique not null,
	description varchar(100)
);

CREATE TABLE employee(
	id serial primary key not null,
	id_d int not null,
	id_jefe int references employee (id) not null,
	first_name varchar(20) not null,
	last_name varchar(20) not null,
	foreign key (id_d)
	references employee_department (id)
);

CREATE TABLE employee_hobby(
	id serial PRIMARY KEY not null,
	name varchar(10) unique not null,
	description varchar(100)
);

CREATE TABLE have(
	id_h int references employee_hobby not null,
	id_e int references employee not null,
	PRIMARY KEY (id_h, id_e)
);

INSERT INTO employee_department(name, description) VALUES('computacion','departamento de computacion');
INSERT INTO employee_department(name, description) VALUES('personal','departamento de personal');
INSERT INTO employee_department(name, description) VALUES('contabilidad','departamento de contabilidad');
INSERT INTO employee_department(name, description) VALUES('compras','departamento de compras');
INSERT INTO employee_department(name, description) VALUES('ventas','departamento de ventas');
INSERT INTO employee_department(name, description) VALUES('operaciones','departamento de operaciones');

INSERT INTO employee(id_d, id_jefe, first_name, last_name) VALUES (1,1,'Armando','Perez');
INSERT INTO employee(id_d, id_jefe, first_name, last_name) VALUES (5,1,'Pedro','Romero');
INSERT INTO employee(id_d, id_jefe, first_name, last_name) VALUES (6,1,'Luisana','Lizarazo');
INSERT INTO employee(id_d, id_jefe, first_name, last_name) VALUES (3,2,'Gabriel','Alvarez');

INSERT INTO employee_hobby(name, description) VALUES ('Nadar','Consiste en nadar');
INSERT INTO employee_hobby(name, description) VALUES ('Correr','Corre todos los fines de semana');
INSERT INTO employee_hobby(name, description) VALUES ('Bicicleta','Andar en bicicleta');

INSERT INTO have(id_e, id_h) VALUES (1,2);
INSERT INTO have(id_e, id_h) VALUES (1,1);
INSERT INTO have(id_e, id_h) VALUES (2,1);
INSERT INTO have(id_e, id_h) VALUES (2,2);
INSERT INTO have(id_e, id_h) VALUES (2,3);
INSERT INTO have(id_e, id_h) VALUES (3,3);
INSERT INTO have(id_e, id_h) VALUES (3,2);
INSERT INTO have(id_e, id_h) VALUES (4,3);
INSERT INTO have(id_e, id_h) VALUES (4,1);

-- ...
