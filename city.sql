create database city;
use city;

CREATE TABLE `city`.`city_details` (
  `c_id` INT NOT NULL,
  `c_name` VARCHAR(45) NOT NULL,
  `c_population` VARCHAR(45) NOT NULL,
  `c_famousFor` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`c_id`, `c_name`, `c_population`, `c_famousFor`));

select * from city_details;