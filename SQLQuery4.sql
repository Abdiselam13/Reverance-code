create database store;
use store;
create table customers(
customer_id int primary key not null,
frist_name varchar(30) not null,
last_name varchar (30)not null,
phone varchar(40)not null,
address varchar(40) not null,
city varchar(30) not null,
state varchar(20));

alter table customers add points int;
select *from customers;
drop table customers;
alter table customers drop constraints;

select from product where product > ( select from product where

insert into customers values ('01','johen','deab','0987654322','lose','flodira','mienoya');

insert into customers values ('02','kali','dalhi','09889754323','laki','dubia','emarad');
insert into customers values ('03','abdi','gacan','098746447367','layab','shirqa','emarad');
insert into customers values ('04','ali','ahmed','098765564722','lasacoomod','barlin','kuwayd');
insert into customers values ('05','ayaan','abdiselan','09987654432','kela','jigjiga','ethopia');
insert into customers values ('06','muna ','abdi','0909876544','qumanda','jigjiga','ethopia');
insert into customers values ('07','kaltuun','yuunis','0098778744','qumaanda','jigjga','ethopia');
insert into customers values ('08','mame','abdi','09738663878','kela','jigjiga','ethopia');
insert into customers values ('09','cadna','bacher','09849948322','cummnity','jigjia','ethopia');
insert into customers values ('010','johen','deab','0987654322','lose','flodira','mienoy');
select *from product
 left join customers on product.customr_id = customers.customer_id

select order_date,frist_name 
from customers
 inner join orders on customers.customer_id = customers.customer_id
select *from customers where address in ('cummnity','qumanda','kela');

select *from customers where dob is not null;
select *from customers limit 3
select frist_name,last_name,phone,address,city,state
from customers where customer_id=6;

create table orders(
or_id int primary key not null,
order_date varchar(20) not null,
unit_price int not null,
customer_id int references customers (customer_id));
drop table orders;
select *from orders;
insert into orders values(01,'20.22.11','10',09);
insert into orders values(05,'2019.1.11','20',06);
insert into orders values(04,'2012.11.6','30',08);
insert into orders values(02,'2021.11.8','40',08);
insert into orders values (09,'2022.2.1','50',02);
insert into orders values (010,'2022.2.1','60',05);
insert into orders values (08,'2022.2.1','70',06);
insert into orders values (0111,'2022.2.1','50',null);

select *from product p where not exists ( select customr_id from product  where customr_id = c.customer_id )
select *from orders where unit_price  >  (
select max(unit_price) from orders where customer_id = 8)

select *from orders where unit_price < all ( select unit_price from orders where customer_id = 8)
select *from orders where unit_price > any ( select unit_price from orders where customer_id = 8)
select *from orders where unit_price > some ( select unit_price from orders where customer_id = 8)
select *from orders where unit_price = some ( select unit_price from orders where customer_id = 8)

select customer_id, count (*) from orders group by customer_id

select *from customers where customer_id  in ( select customer_id from orders group by customer_id having count(*) <=8)

select *from customers where customer_id in (select customr_id from product group by customer_id having count(*)>=1)

select *from product p where unit_price > ( select avg (unit_price) from product where customer_id.c.customer_id
select *from orders
where or_id not in (
select distinct customer_id from orders )
select *from product
where unit_price >(
select unit_price
from products
where pro_id)




select
max (unit_price) as highest,
    min (unit_price) as lowest,
	 count (unit_price) as number_of_unit_price,
	avg (unit_price) as average,
	from orders
	  where customer_id = 6
	  select max(unit_price) as highest,
	       min (unit_price) as lowest ,
		   avg (unit_price) as average,
		   sum (unit_price) as total
		   from orders
	where order_date between '2019.1.1' and '2022.1.1.'
	  
	  select customer_id,
	  sum (unit_price) as total
	  from orders
	  where order_date !<'2019.1.1.'
	  group by customer_id

	  select order_date,
	  sum (unit_price) as total
	  from orders
	  group by order_date
	  order by order_date
	  
	  select customer_id
	  max(unit_price) as highest
	  from orders
	  group by customer_id
	  having total >10


	  select state,city,
	  max (unit_price) as highest
	  from orders
	  join customer_id using (customer_id)
	  group by state,city with rollup;
	  
	  select customer_id,
	  max (unt_price) as highest
	  from orders 
	  group by customer_id
	  having  !> 50
	  order by total desc

	  select state,city,
	  sum (unit_price) as totol
	  from orders o
	  join customers using (customer_id)
	  group by state,city

select *from orders where id != '5' and unit_price < '30';

select *from customers where frist_name  = 'ali' and state = 'kuwayd';
update customers set DOB = null  where customer_id = 3;
update customers set dob = '1991-1-1', points= '100' where customer_id=4
update customers set dob ='2004-1-2',points = '400' where customer_id = 5
update customers set points = '100' where customer_id= 1
update customers set points= points * 50
where dob  !< '1991-1-1'

delete from store 
where customer_id
select *from customers where name = ali





select *from orders where order_date !>'2022.2.1' or unit_price <>'10';
create table product(
pro_id int primary key not null,
name varchar (20) not null,
unit_price int  not null,
customr_id int references customers(customer_id));
drop table product
insert into product (name) values ('mobil')
insert into product values (01,'suger','100',02);
insert into product values (08,'rice','100',04);
insert into product values (07,'flour','400',03);
insert into product values (06,'orange','300',05);
insert into product values (05,'laptop','200',03);
insert into product values (04,'diskatop','1000',02);
insert into product values (12,'crem','10',null);
insert into product values (011,'kceken','10',null);
insert into product values (13,'sream',null,null);
insert into product values (14,'sream','10',null)
drop table product 
select customr_id, ifnulll(pro_id, 'not assigned')as customr_id from orders

select *from customers c where exists (select customr_id from product where customer_id = c.customer) 
select *from product where pro_id  ( select pro_id from customers)
select *from customers where customer_id not in ( select customer_id from product )
select *from customers where customer_id in ( select distinct customr_id from product)

select *from product where unit_price > ( select unit_price from product where pro_id = 5)
select *from product where customr_id is null
select pro_id, unit_price, (select avg(unit_price) from product) as product_average from product

select 
select *from customer where customer_id not in (select distinct customer_id from product)
select *from product where pro_id not in(select distinct customr_id from product)

select *from customers where customer_id not in ( select distinct customr_id from product )


select *from product where unit_price in($50,$100,$10)
select *from product
where pro_id not in (
select distinct customr_id
from product)

select name,
max unit_price) as highest,
min (unit_price) as lowest,
sum (unit_price) as total,
from product
group by name
order by name;

select name,
max (unit_price) as highest,
    min (unit_price) as lowest,
	 count (unit_price) as number_of_unit_price
	  from product
	  where customr_id = 2
	  group by name
	  order by name;

select  min (unit_price) as lowest
from product
select count (unit_price) as number_of_unit_price
from product

select *from product
join customers on product.customr_id = customers.customer_id

select *from product where unit_price <>$100 and unit_price <>$1000;

select *from product  where unit_price between 100 and 1000;
select *from product where name like '____m';
select *from customers where frist_name  like '%abdi%'
select *from product where name like 'l%';
select *from product where unit_price like '10%';
select *from customers where address in ('cumminty','qumaanda','kela');
select *from customers where state = 'ethopia' or state = 'emarad' or state = 'kuwayd';
select *from customers where phone not  like '%3' 
select *from customers where state in ('emarad','ethopoa','kuwayd') or  last_name in('gacan','abdiselan','abdi')
select *from customers where LAST_NAME REGEXP '%ABDI% '
where last_name like '%b%'

select *from customers where state in ('ethopia','emarad') or city in ('jigjiga','dubia');
select *from product where unit_price>$100;
alter table product add
select name,unit_price,unit_price * 1.1 as new_price from product;
select CAST('10' as decimal(5,2));
select *from customers where address <> 'qumaanda'
select *from customers;


select or_id,orders.customer_id,frist_name,last_name,address,state 
from orders
join customers on orders.customer_id = customers.customer_id
select 
*
from orders,customers where orders.customer_id = customers.customer_id
on orders.customer_id = customers.customer_id;

select *from orders,customers
where orders.customer_id = customers.customer_id

select 
or_id
frist_name
from orders o
join customers  c
using (customer_id)

select frist_name,last_name,address,or_id
from customers c
 right outer join orders o on o.customer_id = c.customer_id
order by c.customer_id


select frist_name,last_name,address,or_id pro_id,name 
from customers c 
left outer join orders o on o.customer_id = c.customer_id
left outer join product p on p.customr_id = c.customer_id
order by c.customer_id;

select pro_id, product.customr_id,frist_name,last_name,unit_price
from product 
join customers on product.customr_id =customers.customer_id

select or_id,frist_name from orders natural join customers 

select frist_name as customers,name as product
from customers c
cross join product p  order by c.frist_name 


select ceiling (5.7)
select round (5.73,1)
select floor(5.7)
select rand()

select upper('sky')
select lower('Sky')
select ltrim('sky')

select right ('kindergarten',6)
select substring ('kindergarten',3,5)
select locate ('q',  'kindergarten')
select replace('kindergarten','garten','garden')
select concat ('frist_name','last_name')
select concat ( frist_name,' ',last_name) as full_name from customers

select concat (frist_name , ' ', last_name) as costomer,points, 
case when points > 12500 then 'gold' when points <>17500 then 'silver'
else 'bronze' end as gategory from customers

select *from customers
select monthname(now())
select dayname()
select extract (year from just ())
select date_format (now(),'%Y')
select  sum (unit_price) as total from customers c join orders using (customer_id)
order by customer_id, frist_name 
 -----creating view-----------
create view seles_by_customers as
select customers.customer_id,customers.frist_name,sum(points) as total from customers  join orders on customers.customer_id = customers.customer_id
group by customers.customer_id, customers.frist_name 
select *from seles_by_customers
where total >100000
drop view seles_by_customers

create view query_table as 
select pro_id,name,customers.customer_id,customers.frist_name,sum(unit_price) as total from product join customers on product.customr_id = customers.customer_id 
group by pro_id,name,customers.customer_id,customers.frist_name
select *from  query_table 
select *from  product

create view normal as
select pro_id,
name,
unit_price,
unit_price as balance,
customr_id
from product where (unit_price)> 0
select *from  orders

create view tijabo as
select 
or_id,
order_date,
unit_price,
unit_price as balance,
customer_id 
from orders where (unit_price) > 0

with CHECK OPTION 
DROP VIEW TIJABO
delete from tijabo where or_id = 2
update tijabo set unit_price = unit_price = 70  where or_id = 5
select *from tijabo
select *from normal
 ---STORE PROCEDURE------
CREATE PROCEDURE GET_CUSTOMERS AS 
BEGIN 
SELECT *FROM CUSTOMERS
END
 GET_CUSTOMERS
 ---------ONTHERE PROCEDURE---
CREATE PROCEDURE OPEN_PRODUCT AS BEGIN  SELECT *fROM PRODUCT END
OPEN_PRODUCT
DROP PROCEDURE GET_CUSTOMERS

select pro_id,name,customers.customer_id,customers.frist_name sum (unit_price) as total from product join customers on product.customr_id = customers.customer_jd 
group by pro_id,name,customers.customer_id,customers.frist_name 


select sum(unit_price) as total from product 


-------transection ---------
use store
create table accont(
ac_id numeric(12,0),
acname varchar(40),
balance money)


insert into accont values ('100000','acoont1','2000')
insert into accont values ('200000','acoont2','4000')
select *from accont

select ac_id,acname,balance from accont where acname = 'acoont1'

select ac_id,balance from accont where acname = 'acoont2'
  
  
begin transaction;
update accont set balance = balance - 1000 where acname = 'acoont1'
update accont set balance = balance + 2000 where acname = 'acoont2'
commit transaction ;


begin catch
select 'rollback' 
rollback transaction;
end catch

begin  try

begin transaction tran1
update accont set balance = balance - 1000 where acname = 'acoont1'
save transaction tran1

begin transaction tran2
update accont set balance = balance + 2000 where acname = 'acoont2'
save transaction tran2

commit transaction tran1

commit transaction tran2

end try

begin catch,
select 'rollback' 
rollback transaction tran2
end catch



drop table accont

 select *from customers
use store;
begin  transaction ;
update customers set points = points - 10
where customer_id = 1;
commit transaction;
begin transaction 
update customers set points = points + 40 where customer_id = 2
rollback transaction;

select *from customers
begin transaction 
update customers set points = points + 1000   where customer_id = 5
rollback transaction
begin tran 
update customers set points = '200' where customer_id =7
COMMIT
select * from customers
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
select points from customers where customer_id=7
ROLLBACK TRANSACTION 

 
SET TRANSACTION ISOLATION LEVEL
READ UNCOMMITTED
    | READ COMMITTED
    | REPEATABLE READ
    | SNAPSHOT
    | SERIALIZABLE
    }