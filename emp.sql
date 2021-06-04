use workspace;
select * from employee;
select * from title;
insert into title(empRefId, empDesignation, officeAddress) values(6,"Associate", "Pune");

select * from employee where salary between 500000 and 1000000;
select count(*) from employee where department = "Admin";
select department from employee as dept group by firstName;

select e.firstName, t.officeAddress from employee e inner join title t 
on e.empId = t.empRefId where t.empDesignation = "Associate";

create table worker like employee;
drop table worker;
	