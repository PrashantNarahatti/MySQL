create database state;
use state;

CREATE TABLE `state`.`state_details` (
  `s_id` INT NOT NULL,
  `s_namel` VARCHAR(45) NOT NULL,
  `s_code` INT NOT NULL,
  `s_capital` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`s_id`, `s_namel`, `s_code`, `s_capital`));

select * from state_details; 