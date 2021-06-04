create database capability;

use capability;

insert into shop values(1,'DMart','Sagar');
insert into item values(101,'Vegetables',200,5,1);

select * from shop;

select * from item;

select s.shop_name, s.address, i.item_name,i.price, i.quantity 
from shop s inner join item i 
on s.shop_id = i.shop_id;

select s.shop_name, i.price from 
shop s left join item i on
s.shop_id = i.shop_id order by s.shop_name;
 
select s.shop_name, s.address, i.item_name, i.price from shop s
right join item i on s.shop_id = i.shop_id 
order by s.shop_name;

select shop.shop_name, item.item_name from shop full join item on shop.shop_id = item.shop_id;

select count(shop_id), address
from shop
group by address
order by count(shop_id) asc;

select item_id, item_name from item group by item_name having count(shop_id) >1;

select item_id, item_name from item group by item_name having count(shop_id)>1;

select * from shop 
order by address;

select count(shop_id), address 
from shop 
group by address
having count(address)>1;


select * from shop s INNER JOIN item m WHERE m.shopId = s.shopId AND s.shopName = "dmart";