create database Practise;
use practise;

insert into customers values (1,"Shreevatsa",23,"Bangalore",25000);
insert into orders values (106,"CHats",5000,3);

select * from customers;
select * from orders;

delete from orders where custId=7;
INSERT INTO `practise`.`orders` (`id`, `amount`, `custId`) VALUES ('101', '1500', '2');

select c.id,c.name,c.age,c.address,o.ord_id,o.order_name,o.amount from customers c inner join orders o on c.id = o.custId;

select * from customers order by name, address;

select * from customers group by name;
select count(id), address from customers group by address;
select count(id), address from customers group by address order by count(id) desc;

select c.name, o.ord_id from customers c left join orders o on c.id= o.ord_id order by c.name;





