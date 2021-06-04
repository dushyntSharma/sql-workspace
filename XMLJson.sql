create database playerjson;

use playerjson;

CREATE TABLE MyPlayers(
   ID INT,
   First_Name VARCHAR(255),
   Last_Name VARCHAR(255),
   Date_Of_Birth date,
   Place_Of_Birth VARCHAR(255),
   Country VARCHAR(255),
   PRIMARY KEY (ID)
);

select * from MyPlayers;
select * from xmldatabase;

select * from students;