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
 desc patient_details;
 
 CREATE TABLE `company`.`tourist_table` (
  `t_id` INT NOT NULL,
  `t_location` VARCHAR(45) NOT NULL,
  `t_seaLevel` FLOAT NOT NULL,
  `t_famousFor` VARCHAR(45) NOT NULL,
  `t_entryFees` INT NOT NULL,
  `t_season` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`t_id`, `t_location`, `t_seaLevel`, `t_famousFor`, `t_entryFees`, `t_season`));

 select * from tourist_table;

  CREATE TABLE `company`.`biscuit_table` (
  `b_id` INT NOT NULL,
  `b_brand` VARCHAR(45) NOT NULL,
  `b_name` VARCHAR(45) NOT NULL,
  `b_colour` VARCHAR(45) NOT NULL,
  `b_price` INT NOT NULL,
  `b_quantity` INT NOT NULL,
  `b_invented` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`b_id`, `b_brand`, `b_name`, `b_colour`, `b_price`, `b_quantity`, `b_invented`));

 select * from biscuit_table;
 
 CREATE TABLE `company`.`railway_table` (
  `r_id` INT NOT NULL,
  `r_name` VARCHAR(45) NOT NULL,
  `r_location` VARCHAR(45) NOT NULL,
  `r_noOfTracks` INT NOT NULL,
  `r_sanitized` TINYINT NOT NULL,
  `r_noOfWorkers` INT NOT NULL,
  `r_stationCode` VARCHAR(45) NULL,
  PRIMARY KEY (`r_id`, `r_name`, `r_location`, `r_noOfTracks`, `r_noOfWorkers`, `r_sanitized`));

select * from railway_table;

CREATE TABLE `company`.`factory_table` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `location` VARCHAR(45) NOT NULL,
  `type` VARCHAR(45) NOT NULL,
  `noOfWorkers` INT NOT NULL,
  `acres` DOUBLE NOT NULL,
  PRIMARY KEY (`id`, `name`, `location`, `type`, `noOfWorkers`, `acres`));

select * from factory_table;

CREATE TABLE `company`.`medicine_table` (
  `m_id` INT NOT NULL,
  `m_name` VARCHAR(45) NOT NULL,
  `m_shopName` VARCHAR(45) NOT NULL,
  `m_type` VARCHAR(45) NOT NULL,
  `m_colour` VARCHAR(45) NOT NULL,
  `m_grams` FLOAT NOT NULL,
  `m_quantity` INT NOT NULL,
  PRIMARY KEY (`m_id`, `m_name`, `m_shopName`, `m_type`, `m_colour`, `m_grams`, `m_quantity`));

select * from medicine_table;

CREATE TABLE `company`.`silkmanufacturer_table` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `location` VARCHAR(45) NOT NULL,
  `pattern` VARCHAR(45) NOT NULL,
  `occasion` VARCHAR(45) NOT NULL,
  `bordersType` VARCHAR(45) NOT NULL,
  `quantity` INT NOT NULL,
  PRIMARY KEY (`id`, `name`, `location`, `pattern`, `occasion`, `bordersType`, `quantity`));

select * from silkmanufacturer_table;

CREATE TABLE `company`.`airport_details` (
  `a_id` INT NOT NULL,
  `a_name` VARCHAR(45) NOT NULL,
  `a_location` VARCHAR(45) NOT NULL,
  `a_type` VARCHAR(45) NOT NULL,
  `a_sanitized` TINYINT NOT NULL,
  `a_noOfWorkers` INT NOT NULL,
  PRIMARY KEY (`a_id`, `a_name`, `a_location`, `a_type`, `a_sanitized`, `a_noOfWorkers`));

select * from airport_details;

CREATE TABLE `company`.`solarsystem_details` (
  `s_id` INT NOT NULL,
  `s_name` VARCHAR(45) NOT NULL,
  `s_size` VARCHAR(45) NOT NULL,
  `a_price` INT NOT NULL,
  `a_noOfPanels` INT NOT NULL,
  `a_TotalVoltages` INT NOT NULL,
  PRIMARY KEY (`s_id`, `s_name`, `s_size`, `a_price`, `a_noOfPanels`, `a_TotalVoltages`));

select * from solarsystem_details;

CREATE TABLE `company`.`sugarcane_details` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `factoryName` VARCHAR(45) NOT NULL,
  `quantity` INT NOT NULL,
  `cityName` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`, `name`, `factoryName`, `quantity`, `cityName`));

select * from sugarcane_details;
  