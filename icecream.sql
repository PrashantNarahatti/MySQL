create database icecream;
use icecream;

CREATE TABLE `icecream`.`icecream_details` (
  `cream_id` INT NOT NULL,
  `c_flavour` VARCHAR(45) NOT NULL,
  `c_name` VARCHAR(45) NOT NULL,
  `c_price` INT NOT NULL,
  PRIMARY KEY (`cream_id`, `c_flavour`, `c_name`, `c_price`));

select * from icecream_details;