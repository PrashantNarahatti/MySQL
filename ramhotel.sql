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
TRUNCATE TABLE  hotel_details;
DROP TABLE  hotel_details;
DROP DATABASE  hotel_details;

INSERT INTO hotel_details VALUE('OYO','Abhijeet','7th main,Mico Layout,BTM 560029','VEG',10,10,5,false);
INSERT INTO hotel_details VALUE('Vinanta','Shreyas','HAL,Banglore','NON-VEG',10,10,5,false);
INSERT INTO hotel_details VALUE('Shivaram','Ram','Kamatagi,Bagalkot','NON-VEG',10,10,5,true);
INSERT INTO hotel_details VALUE('JEEVAN','Jeevna','Karavar,Bagalkot','NON-VEG',10,10,5,true);
INSERT INTO hotel_details VALUE('Shalti','Pacchu','Navanagr,Bagalkot','NON-VEG',10,10,5,true);
INSERT INTO hotel_details VALUE('Taj','Teju','Navanagar,Bagalkot','NON-VEG',10,10,5,false);
INSERT INTO hotel_details VALUE('Pacchu','Vinayak','Sec No 3,Navanagr','NON-VEG',10,10,5,true);
INSERT INTO hotel_details VALUE('JetLag','Anmol','Yashwanthpur,Banglore','NON-VEG',10,10,5,true),('Radison','Anmol','Hebal,Banglore','NON-VEG',10,10,5,true);
ALTER TABLE hotel_details MODIFY COLUMN location VARCHAR(50);

INSERT INTO hotel_details(name,owner,cusine,is_parking_available)VALUE('Kabab M','Raju','NON_VEG',true);

ALTER TABLE hotel_details ADD COLUMN roof_touf BOOLEAN;
INSERT INTO hotel_details VALUE('Udupi','Ram','Kamatagi,Bagalkot','NON-VEG',10,10,5,true,true);

-- old column name   --new name
ALTER TABLE hotel_details RENAME COLUMN location TO address;

-- change the table name
ALTER TABLE hotel_details RENAME TO hotels;

SELECT *FROM hotels;



-- update all rows
UPDATE hotels SET roof_touf=true;

UPDATE hotels SET address ='BTM 2 stage,Banglore'WHERE name='Kababa M';


CREATE DATABASE songs;
USE songs;
CREATE TABLE songs_details(
id INT PRIMARY KEY,
name VARCHAR(30)NOT NULL,
singer VARCHAR(30)NOT NULL,
duration TIME,
genre VARCHAR(30),
alubm VARCHAR(30)UNIQUE,
likes INT,
platform Varchar(30)DEFAULT'YouTube',
price FLOAT CHECK(price>0 AND price<10000),
lang VARCHAR(30)
);

DESC songs_details;
INSERT INTO songs_details VALUE(1,'Closer','Chain Smoker','00:03:10','Melody','Closer',25000,'Apple Music',250,'English');
SELECT *FROM songs_details;
INSERT INTO songs_details VALUE(2,'Blinding Lights','The Weekend','00:03:10','Rock','After Hourse',15000,'Apple Music',150,'English');
INSERT INTO songs_details(id,name,singer,duration,genre,alubm,likes,price,lang) VALUE(3,'Bliver','Imagine Dragons','00:03:10','Rock','Imagine Dragons',55000,350,'English');
INSERT INTO songs_details VALUE
(4,'Kusu Kusu','Imagine Dragons','00:04:10','Rock','Sathya Meva Jayanthe',5000,'Apple',350,'Hindi'),
(5,'Alone','Alan Walker','00:05:10','Sad','Walker',10000,'YouTube',450,'English');

SELECT * FROM songs_details;
SELECT * FROM songs_details WHERE name='Unforgetable';
SELECT * FROM songs_details WHERE platform='Apple Music';
SELECT * FROM songs_details WHERE platform='YouTube'AND price<500;
SELECT * FROM songs_details WHERE lang='English' OR lang='Hindi';
SELECT * FROM songs_details WHERE lang!='English';
SELECT name,singer FROM songs_details;
SELECT * FROM songs_details WHERE singer='The Weekend' OR singer='Chain Smoker' OR singer='Alan Walker';
SELECT * FROM songs_details WHERE singer IN('The Weekend','Chain Smoker','Imagine Dragons','Alan Walker'); 
SELECT * FROM songs_details WHERE likes>10000 AND likes<50000;
SELECT * FROM songs_details WHERE likes BETWEEN 10000 AND 50000;
SELECT LANG FROM songs_details;
SELECT DISTINCT LANG FROM songs_details;
SELECT DISTINCT LANG,NAME FROM songs_details;
SELECT DISTINCT LANG,NAME,LIKES,SINGER,PRICE,PLATFORM FROM songs_details;
SELECT * FROM songs_details ORDER BY price;
SELECT * FROM songs_details ORDER BY name; 
SELECT * FROM songs_details ORDER BY price DESC;
SELECT * FROM songs_details ORDER BY name DESC;

INSERT INTO songs_details(id,name,singer,likes,price,lang) VALUE(6,'Demon In Me','Sanchith',56000,350,'Kannada'),
(7,'Madeva','Sanchith',86000,350,'Kannada'),
(8,'Maaye','Sanchith',96000,550,'Kannada');

SELECT * FROM songs_details WHERE genre IS NULL ;
SELECT * FROM songs_details WHERE alubm IS NOT NULL;
DELETE FROM songs_details WHERE id=2;
DELETE FROM songs_details WHERE id=8 AND name='Maaye';

SELECT * FROM songs_details LIMIT 5;
SELECT * FROM songs_details ORDER BY id DESC LIMIT 5 ;
SELECT * FROM songs_details;
SELECT * FROM songs_details WHERE name="Belive";
SELECT * FROM songs_details WHERE name LIKE 'Demon%';
SELECT * FROM songs_details WHERE singer LIKE 'Imagine%';
SELECT * FROM songs_details WHERE name LIKE'%Lights';
SELECT * FROM songs_details WHERE alubm LIKE '%Rules';
SELECT * FROM songs_details WHERE duration LIKE '00:04:%';
SELECT * FROM songs_details WHERE name LIKE 'A_O%';
SELECT * FROM songs_details WHERE name LIKE '_A%';
SELECT * FROM songs_details WHERE name LIKE '___d%';
SELECT * FROM songs_details WHERE name LIKE 'K_s_%';
SELECT name AS songs_names FROM songs_details;
SELECT songs_names FROM songs_details;
SELECT name,singer,alubm FROM songs_details;
SELECT songs_details.name,songs_details.singer,songs_details.alubm FROM songs_details ;
SELECT SD.name,SD.singer,SD.alubm FROM songs_details SD ;
-- Heighest likes
SELECT MAX(likes)AS Heighest_Likes_For_Song FROM songs_details;

-- Highets Price 
SELECT MAX(price) AS Heighest_Price_For_Song FROM songs_details;
-- Lowest Price
SELECT MIN(price) AS Lowest_Price_For_Song FROM songs_details;
-- Lowest Likes
SELECT MAX(likes) AS Lowest_Likes_For_Song FROM songs_details;
-- Heighest and Lowest likes  for songs 
SELECT MAX(likes) AS Heighest_Likes_For_Song,
MIN(likes) AS  Lowest_Likes_For_Song FROM songs_details;
-- Heighest and Lowest price  for songs 
SELECT MAX(price) AS Heighest_Price_For_Song,
MIN(price) AS  Lowest_Price_For_Song FROM songs_details;

-- Sum of price 
SELECT SUM(price) AS Total_Songs_Price FROM songs_details;

-- Avarage price for songs
SELECT AVG(price) AS Avarage_Price_Songs FROM songs_details;

-- Avarage likes for songs
SELECT AVG(likes) AS Avarage_Likes_Songs FROM songs_details;

-- no of songs details table
SELECT COUNT(name) AS No_Of_Songs FROM songs_details;

-- no of songs details table by alubm
SELECT COUNT(name) AS No_Of_Songs_By_Alubm FROM songs_details;
SELECT COUNT(*) AS No_Of_Songs FROM songs_details;
SELECT COUNT(*) AS No_Of_Songs_In_English FROM songs_details WHERE lang='English';

-- no of lang in songs details table
SELECT COUNT(DISTINCT lang)AS No_Of_Lang FROM songs_details;

-- get current date
SELECT CURDATE() AS Present_Date;

-- get current time
SELECT CURTIME() AS Present_Time;

-- get date and current time
SELECT NOW() AS Present_Date_Time;

ALTER TABLE songs_details ADD COLUMN released_dateTime DATETIME ; 

SELECT * FROM songs_details;

-- release date from 
Update songs_details SET released_dateTime='2019-10-10 20:00:00'WHERE id=1;

Update songs_details SET released_dateTime=now()WHERE id>1;

-- release date from songs details
SELECT name,DATE(released_dateTime)AS Released_Date FROM songs_details;

-- release year from songs details
SELECT name,YEAR(released_dateTime)AS Released_Year FROM songs_details;

-- release time from songs details
SELECT name,TIME(released_dateTime)AS Released_Time FROM songs_details;

-- release month from songs details
SELECT name,MONTH(released_dateTime)AS Released_Month FROM songs_details;

-- release month name from songs details
SELECT name,MONTHNAME(released_dateTime)AS Released_MonthName FROM songs_details;

-- release day name from songs details
SELECT name,DAYNAME(released_dateTime)AS Released_DayName FROM songs_details;

-- get the duration of song in minute
SELECT name,MINUTE(duration)AS Song_Duration_Minute FROM songs_details;

-- get the duration of song in hour
SELECT name,HOUR(duration)AS Song_Duration_Hour FROM songs_details;

-- get the duration of song in seconds
SELECT name,SECOND(duration)AS Song_Duration_Seconds FROM songs_details;
-- get the no of songs released every year
SELECT COUNT(name)AS no_of_songs,YEAR(released_dateTime)FROM songs_details GROUP BY YEAR(release_dateTime);
SELECT * FROM songs_details;

-- get no of songs in each lang
SELECT COUNT(name)AS no_of_songs,lang FROM songs_details GROUP BY lang;

SELECT COUNT(name)AS no_of_songs,lang FROM songs_details WHERE lang ='english';

-- get no of songs in each platform
SELECT COUNT(name)AS no_of_songs,platfrom FROM songs_details GROUP BY platfrom;

-- get highest like in each lang

SELECT MAX(likes)AS Highest_likes,lang FROM songs_details GROUP BY lang;

-- highest likes songs by each singer
SELECT MAX(likes)AS Highest_likes,singer FROM songs_details GROUP BY singer;

-- get lowest price by each platfom
SELECT MIN(price)AS Lowest_Price,platform FROM songs_details GROUP BY platform;
-- get the no of songs done by each singer in each year
SELECT COUNT(name)AS No_Of_Songs,singer,YEAR(release_dateTime) FROM songs_details GRO
-- total likes given for each singer
SELECT SUM(likes)AS Total_Likes,singer FROM songs_details GROUP BY singer;

-- tolal price given by each platform
SELECT SUM(price)AS Total_Price,platform FROM songs_details GROUP BY platform;

-- get avarge likes given for each singer
SELECT AVG(likes)AS Avarge_Likes,singer FROM songs_details GROUP BY singer;
-- avarge price by each platform
SELECT AVG(price)AS Avarge_Price,platform FROM songs_details GROUP BY platform;
-- avarge likes given for selected singer
SELECT AVG(likes)AS Avarge_Likes,singer FROM songs_details WHERE singer IN('The Weekend','Chain Smoker','Imagine Dragons','Alan Walker') GROUP BY singer;
-- avarge likes given for selected genre
SELECT AVG(likes)AS Avarge_Likes,genre FROM songs_details WHERE genre IN('Rock','sad') GROUP BY genre;
-- no of songs in each genre having count greaterthan 3
SELECT COUNT(name) AS No_Of_Songs,genre FROM songs_details GROUP BY genre HAVING No_Of_Songs>1;
