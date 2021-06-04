create database shreevatsa;

use shreevatsa;

create table father(father_id varchar(30) primary key not null, father_name varchar(30) not null);
insert into father values('MT322','James Jones');

create table celebrity(celeb_id int primary key not null,
 father_id varchar(30),celeb_fname varchar(30) not null,celeb_lname varchar(30) not null,
 gender varchar(30) not null, city varchar(30) not null, salary double(10,2) not null,
 foreign key(father_id) references father(father_id));
 
insert into celebrity values(1007,'MT320','Peggy','Lipton','Female','sydney',34566.53,'98674854892');
insert into celebrity(celeb_id,celeb_fname,celeb_lname,gender,city,salary,phone) values(1008,'Lloyds','Bridge','male','Lipton',17540.53,'98564854223');
 
select * from father;
select * from celebrity;
select * from award;
 
create  table award(award_id varchar(30) not null, celeb_id int not null, award_name varchar(30) not null,
award_date date not null, foreign key(celeb_id) references celebrity(celeb_id));

insert into award values('OS-2008-01','1001','oscar','2008-04-30');
insert into award values('FF-2010-06','1002','filmfare','2010-04-30');
insert into award values('OS-2008-30','1003','oscar','2008-06-30');
insert into award values('BM-2008-98','1004','bestmovie','2008-08-23');
insert into award values('BM-2009-32','1005','bestmovie','2009-08-30');
insert into award values('FF-2008-06','1006','filmfare','2008-04-15');
insert into award values('OS-2008-01','1007','oscar','2019-04-30');

select c.celeb_fname,c.celeb_lname, a.award_name from celebrity c left join award a on c.celeb_id = a.celeb_id where a.award_name = "oscar" ;

select celeb_fname,city, sum(salary) from celebrity group by salary;
select c.celeb_lname,a.award_date, count(a.award_name) from celebrity c inner join award a on c.celeb_id = a.celeb_id group by c.celeb_lname order by c.celeb_lname;
select celeb_fname,city, avg(salary) from celebrity group by city order by celeb_fname desc;
select celeb_fname,city, avg(salary) from celebrity group by city having count(*) >= 1 order by celeb_fname desc;
select celeb_fname,gender,count(*) as student_count from celebrity group by celeb_fname,gender;
select celeb_fname,gender,count(*) as student_count from celebrity where gender = 'Female' group by celeb_fname,gender;
select celeb_lname,gender,count(*) as student_count from celebrity group by celeb_lname having count(*) >1;

select * from celebrity c left join award a on c.celeb_id = a.celeb_id;

select * from father f right join celebrity c on f.father_id = c.father_id;

select c.celeb_id,c.celeb_fname,c.celeb_lname,c.city,a.award_id,a.award_name from celebrity c left join award a on c.celeb_id = a.celeb_id order by c.celeb_fname desc;
select f.father_id,f.father_name, c.celeb_id,c.celeb_fname from father f right join celebrity c on f.father_id = c.father_id order by f.father_name;
select c.celeb_id,c.celeb_fname,c.city,a.award_id,a.award_name from celebrity c full outer join award a on c.celeb_id = a.celeb_id;
select * from celebrity left join award on celebrity.celeb_id = award.celeb_id union all select * from celebrity right join award on celebrity.celeb_id = award.celeb_id;

select c.celeb_fname,f.father_name, a.award_name from celebrity c inner join award a on c.celeb_id = a.celeb_id inner join father f on f.father_id = c.father_id where a.award_name = "oscar";
select c.celeb_fname,f.father_name, a.award_name from celebrity c inner join father f on c.father_id = f.father_id inner join award a on c.celeb_id = a.celeb_id where a.award_name = "oscar";

select * from father right join celebrity on father.father_id = celebrity.father_id; 
select * from celebrity where father_id is null;
select * from celebrity order by celeb_fname desc;
select * from celebrity where father_id is not null;
select * from award limit 3;
select count(salary) as Maximum_Salary from celebrity;
select * from celebrity where celeb_fname like 'l%';
select * from celebrity where city not in ('New York', 'Bangalore','Lipton');
select * from celebrity where salary between 20000 and 40000;
select c.celeb_fname as celebrity_1, d.celeb_fname as celebrity_2, c.city from celebrity c, celebrity d where c.celeb_id <> d.celeb_id order by c.city;

select * from celebrity where father_id is null;

select c.celeb_fname, f.father_name from celebrity c left join father f on c.father_id = f.father_id where c.father_id is null;

select a.award_name, count(c.celeb_fname) as awards from celebrity c inner join award a on c.celeb_id = a.celeb_id group by a.award_name ;

delimiter //
CREATE PROCEDURE award_view()
BEGIN
	SELECT * FROM award;
END //

call celebrity_view;


select * from father;
select * from celebrity;
select * from award;












