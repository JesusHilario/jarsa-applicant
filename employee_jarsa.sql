-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE IF NOT EXISTS employee_hobby (
	id SERIAL NOT NULL PRIMARY KEY,
	name VARCHAR(45) NULL,
	description VARCHAR(45) NULL);
---------------------------------------------------------------------------------------  
INSERT INTO employee_hobby (name, description) VALUES ('soccer', '.');
INSERT INTO employee_hobby (name, description) VALUES ('baseball', '..');
INSERT INTO employee_hobby (name, description) VALUES ('basketball', '...');
---------------------------------------------------------------------------------------
SELECT * FROM employee_hobby;
---------------------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS hobby_for_employee (
	id SERIAL NOT NULL PRIMARY KEY,
	employee_id INT NOT NULL,
	employee_hobby_id INT NOT NULL,
	CONSTRAINT fk_employee_id
	FOREIGN KEY (employee_id)
	REFERENCES employee (id),
	CONSTRAINT fk_employee_hobby_id
	FOREIGN KEY (employee_hobby_id)
	REFERENCES employee_hobby (id));
---------------------------------------------------------------------------------------
INSERT INTO hobby_for_employee (employee_id, employee_hobby_id) VALUES ('1', '1');
INSERT INTO hobby_for_employee (employee_id, employee_hobby_id) VALUES ('1', '2');
INSERT INTO hobby_for_employee (employee_id, employee_hobby_id) VALUES ('2', '3');
INSERT INTO hobby_for_employee (employee_id, employee_hobby_id) VALUES ('2', '1');
INSERT INTO hobby_for_employee (employee_id, employee_hobby_id) VALUES ('3', '2');
INSERT INTO hobby_for_employee (employee_id, employee_hobby_id) VALUES ('3', '3');
INSERT INTO hobby_for_employee (employee_id, employee_hobby_id) VALUES ('4', '1');
INSERT INTO hobby_for_employee (employee_id, employee_hobby_id) VALUES ('4', '2');
---------------------------------------------------------------------------------------
SELECT * FROM hobby_for_employee;
----------------  comprobamos si existe la relacion con un left join  -----------------
SELECT * FROM employee_hobby  emp_hob
	LEFT JOIN hobby_for_employee hob_for_emp
	ON emp_hob.id = hob_for_emp.employee_hobby_id
	LEFT JOIN employee emp
	ON hob_for_emp.employee_id = emp.id;

-- ...
