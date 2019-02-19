-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee (
  CREATE DATABASE employee_employee
CHARACTER SET latin1
COLLATE latin1_bin;
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `employee_employee`.`employee` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));
-- -----------------------------------------------------
INSERT INTO `employee_employee`.`employee` (`first_name`, `last_name`) VALUES ('person_1', 'person_1_1');
INSERT INTO `employee_employee`.`employee` (`first_name`, `last_name`) VALUES ('person_2', 'person_2_2');
INSERT INTO `employee_employee`.`employee` (`first_name`, `last_name`) VALUES ('person_3', 'person_3_3');
INSERT INTO `employee_employee`.`employee` (`first_name`, `last_name`) VALUES ('person_4', 'person_4_4');
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `employee_employee`.`department_for_employee` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `employee_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_department_for_employee_employee` (`employee_id` ASC),
  CONSTRAINT `fk_department_for_employee_employee`
    FOREIGN KEY (`employee_id`)
    REFERENCES `employee_employee`.`employee` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
-- -----------------------------------------------------
INSERT INTO `employee_employee`.`department_for_employee` (`employee_id`) VALUES ('1');
INSERT INTO `employee_employee`.`department_for_employee` (`employee_id`) VALUES ('2');
INSERT INTO `employee_employee`.`department_for_employee` (`employee_id`) VALUES ('3');
INSERT INTO `employee_employee`.`department_for_employee` (`employee_id`) VALUES ('4');
 -- -----------------------------------------------------   
CREATE TABLE IF NOT EXISTS `employee_employee`.`employee_department` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `description` VARCHAR(45) NULL,
  `employee_for_department_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_employee_department_employee_for_department` (`employee_for_department_id` ASC),
  CONSTRAINT `fk_employee_department_employee_for_department`
      FOREIGN KEY (`employee_for_department_id`)
    REFERENCES `employee_employee`.`department_for_employee` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
-- -----------------------------------------------------
INSERT INTO `employee_employee`.`employee_department` (`name`, `description`,`employee_for_department_id`) VALUES ('purchases', '.' ,'1');
INSERT INTO `employee_employee`.`employee_department` (`name`, `description`,`employee_for_department_id`) VALUES ('sales','..','2');
INSERT INTO `employee_employee`.`employee_department` (`name`, `description`,`employee_for_department_id`) VALUES ('floor', '...','3');
INSERT INTO `employee_employee`.`employee_department` (`name`, `description`,`employee_for_department_id`) VALUES ('warehouse', '....','4');
INSERT INTO `employee_employee`.`employee_department` (`name`, `description`,`employee_for_department_id`) VALUES ('receipt', '.....','5');
INSERT INTO `employee_employee`.`employee_department` (`name`, `description`,`employee_for_department_id`) VALUES ('point of sale', '......','6');
);

CREATE TABLE employee_department (
);

CREATE TABLE employee_hobby (
);

-- ...
