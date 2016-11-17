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
	first_name varchar(20) not null,
	last_name varchar(20) not null,
	foreign key (id_d)
	references employee_department (id)
);

INSERT INTO employee_department(name, description) VALUES('computacion','departamento de computacion');
INSERT INTO employee_department(name, description) VALUES('personal','departamento de personal');
INSERT INTO employee_department(name, description) VALUES('contabilidad','departamento de contabilidad');
INSERT INTO employee_department(name, description) VALUES('compras','departamento de compras');
INSERT INTO employee_department(name, description) VALUES('ventas','departamento de ventas');
INSERT INTO employee_department(name, description) VALUES('operaciones','departamento de operaciones');

INSERT INTO employee(id_d, first_name, last_name) VALUES (1,'Armando','Perez');
INSERT INTO employee(id_d, first_name, last_name) VALUES (5,'Pedro','Romero');
INSERT INTO employee(id_d, first_name, last_name) VALUES (6,'Luisana','Lizarazo');
INSERT INTO employee(id_d, first_name, last_name) VALUES (3,'Gabriel','Alvarez');

-- ...
