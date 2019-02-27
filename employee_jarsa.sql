-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

---------------------------------------------------------------------------------------
CREATE TABLE employee(
	id SERIAL NOT NULL PRIMARY KEY,
	first_name character varying(45),
	last_name character varying(45));
---------------------------------------------------------------------------------------
INSERT INTO employee (first_name, last_name) VALUES ('person_1', 'person_1_1');
INSERT INTO employee (first_name, last_name) VALUES ('person_2', 'person_2_2');
INSERT INTO employee (first_name, last_name) VALUES ('person_3', 'person_3_3');
INSERT INTO employee (first_name, last_name) VALUES ('person_4', 'person_4_4');
---------------------------------------------------------------------------------------
SELECT * FROM employee;
---------------------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS department_for_employee (
	id SERIAL NOT NULL PRIMARY KEY,
	employee_id INT NOT NULL,
	CONSTRAINT fk_department_for_employee_employee
	FOREIGN KEY (employee_id)
	REFERENCES employee (id));
---------------------------------------------------------------------------------------
INSERT INTO department_for_employee (employee_id) VALUES ('1');
INSERT INTO department_for_employee (employee_id) VALUES ('2');
INSERT INTO department_for_employee (employee_id) VALUES ('3');
INSERT INTO department_for_employee (employee_id) VALUES ('4');
---------------------------------------------------------------------------------------
SELECT * FROM department_for_employee ;
---------------------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS employee_department (
	id SERIAL NOT NULL PRIMARY KEY,
	name VARCHAR(45) NULL,
	description VARCHAR(45) NULL,
	employee_for_department_id INT NOT NULL,
	CONSTRAINT fk_employee_department_employee_for_department
	FOREIGN KEY (employee_for_department_id)
	REFERENCES department_for_employee(id));
---------------------------------------------------------------------------------------
INSERT INTO employee_department (name, description, employee_for_department_id) VALUES ('purchases', '.' ,'1');
INSERT INTO employee_department (name, description, employee_for_department_id) VALUES ('sales','..','2');
INSERT INTO employee_department (name, description, employee_for_department_id) VALUES ('floor', '...','3');
INSERT INTO employee_department (name, description, employee_for_department_id) VALUES ('warehouse', '....','4');
---------------------------------------------------------------------------------------
SELECT * FROM employee_department;
----------------  comprobamos si existe la relacion con un left join  ----------------------
SELECT emp_dep.name, emp.first_name, emp.last_name FROM employee_department emp_dep
	LEFT JOIN department_for_employee dep_for_emp
	ON emp_dep.id = dep_for_emp.id
	LEFT JOIN employee emp
	ON dep_for_emp.employee_id = emp.id

-- ...
