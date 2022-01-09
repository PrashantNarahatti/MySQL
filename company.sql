create database company;
use company;

CREATE TABLE `company`.`company_details` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `type` VARCHAR(45) NOT NULL,
  `doamin` VARCHAR(45) NOT NULL,
  `website` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`, `name`, `type`, `doamin`, `website`));
  
  select * from company_details;
  
  CREATE TABLE `company`.`country_details` (
  `c_id` INT NOT NULL,
  `c_name` VARCHAR(45) NOT NULL,
  `c_continent` VARCHAR(45) NOT NULL,
  `c_population` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`c_id`, `c_name`, `c_continent`, `c_population`));
  
   select * from country_details;
   
   CREATE TABLE `company`.`state_details` (
  `s_id` INT NOT NULL,
  `s_name` VARCHAR(45) NOT NULL,
  `s_noOfDistricts` INT NOT NULL,
  `s_capitalCity` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`s_id`, `s_name`, `s_noOfDistricts`, `s_capitalCity`));
   
   select * from state_details; 
   
   CREATE TABLE `company`.`city_details` (
  `c_id` INT NOT NULL,
  `c_name` VARCHAR(45) NOT NULL,
  `c_population` VARCHAR(45) NOT NULL,
  `c_famousFor` VARCHAR(45) NOT NULL,
  `c_coronaZone` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`c_id`, `c_name`, `c_population`, `c_famousFor`, `c_coronaZone`));
  
  select * from city_details;
  
  CREATE TABLE `company`.`patient_details` (
  `p_id` INT NOT NULL,
  `p_name` VARCHAR(45) NOT NULL,
  `p_birthPlace` VARCHAR(45) NOT NULL,
  `p_corona` VARCHAR(45) NOT NULL,
  `p_age` INT NOT NULL,
  `p_buNo` INT NOT NULL,
  PRIMARY KEY (`p_id`, `p_name`, `p_birthPlace`, `p_corona`, `p_age`, `p_buNo`));

 select * from patient_details;

  
  