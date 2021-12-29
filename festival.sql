create database festival;
use festival;
CREATE TABLE `festival`.`festival_details` (
  `f_id` INT NOT NULL,
  `f_name` VARCHAR(45) NOT NULL,
  `f_date` VARCHAR(45) NOT NULL,
  `f_state` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`f_id`, `f_name`, `f_date`, `f_state`));

select * from festival_details;