CREATE DATABASE btm;
USE btm;
CREATE TABLE `btm`.`club` (
  `c_id` INT NOT NULL,
  `c_name` VARCHAR(45) NOT NULL,
  `c_location` VARCHAR(45) NOT NULL,
  `c_bouncers` INT NOT NULL,
  `c_entryFee` BIGINT(100) NOT NULL,
  `c_isActive` TINYINT NULL,
  PRIMARY KEY (`c_id`, `c_name`, `c_location`, `c_bouncers`, `c_entryFee`));
  
select * from club;





