create database virtualclass;

use virtualclass;

select * from student;
select * from admin;
insert into student(name,age,address,city,state,country,pincode,email,username,password) values('shreevatsa',22,'sagar','sagar','karnataka','india',577417,'dush@gmail.com','shreevatsa','1234');

select * from staff;

select * from marks;
select * from sessions;

select * from news;
select * from feedback;

insert into staff(name,age,address,city,state,country,pincode,email,username,password) values('Shree',22,'Bangalore','Bnaglore','karnataka','india',577417,'dush@gmail.com','shree','123');

insert into marks inner join student on marks.email=student.email where

