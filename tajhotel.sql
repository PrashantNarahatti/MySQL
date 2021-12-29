CREATE DATABASE ramhotel;
USE ramhotel;

CREATE TABLE hotel_details(
name VARCHAR(10),
owner VARCHAR(10),
location VARCHAR(30),
cusine VARCHAR(10),
no_of_stafs TINYINT,
no_of_rooms TINYINT,
ratings FLOAT,
is_parking_available BOOLEAN
);
SHOW TABLES;
DESC hotel_details;
SELECT*FROM hotel_details;
INSERT INTO hotel_details VALUE('OYO','Abhijeet','7th main,Mico Layout,BTM 560029','VEG',10,10,5,false);
INSERT INTO hotel_details VALUE('Vinanta','Shreyas','HAL,Banglore','NON-VEG',10,10,5,false);
INSERT INTO hotel_details VALUE('Shivaram','Ram','Kamatagi,Bagalkot','NON-VEG',10,10,5,true);
INSERT INTO hotel_details VALUE('JEEVAN','Jeevna','Karavar,Bagalkot','NON-VEG',10,10,5,true);
INSERT INTO hotel_details VALUE('Shalti','Pacchu','Navanagr,Bagalkot','NON-VEG',10,10,5,true);
INSERT INTO hotel_details VALUE('Taj','Teju','Navanagar,Bagalkot','NON-VEG',10,10,5,false);
INSERT INTO hotel_details VALUE('Pacchu','Vinayak','Sec No 3,Navanagr','NON-VEG',10,10,5,true);
INSERT INTO hotel_details VALUE('JetLag','Anmol','Yashwanthpur,Banglore','NON-VEG',10,10,5,true),('Radison','Anmol','Hebal,Banglore','NON-VEG',10,10,5,true),('Karava','Manju','Navanagar,Bagalkot','NON-VEG',10,10,5,true);
ALTER TABLE hotel_details MODIFY COLUMN location VARCHAR(50);

