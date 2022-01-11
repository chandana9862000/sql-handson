create database handson
create table salesman(
salesman_ID numeric(5) primary key,
Name varchar(30) not null,
city varchar(15) not null,
commission decimal(5,2) not null
)

select * from salesman
insert into salesman values(5001,'James Hoog','Newyork',0.15)
insert into salesman values(5002,'Nail Knite','Paris',0.13)
insert into salesman values(5005,'Pit Alex','London',0.11)
insert into salesman values(5006,'Mc Lyon','Paris',0.14)
insert into salesman values(5007,'paul Adam','Rome',0.13)
insert into salesman values(5003,'Lauson Hen','Sanjose',0.12)
select name,commission from salesman
select name,city from salesman where city = 'paris'

drop table orders
select * from orders
insert into orders values(70001,150.5,'2012-05-10',3005,5002)
insert into orders values(70009,270.65,'2012-09-10',3001,5005)
insert into orders values(70002,65.26,'2012-05-10',3002,5001)
insert into orders values(70004,110.5,'2012-08-17',3009,5003)
insert into orders values(70007,948.5,'2012-09-10',3005,5002)
insert into orders values(70005,2400.6,'2012-07-27',3005,5001)
insert into orders values(70008,5760,'2012-09-10',3002,5001)
insert into orders values(70010,1983.43,'2012-10-10',3004,5006)
insert into orders values(70003,2480.4,'2012-10-10',3009,5003)
insert into orders values(70012,250.45,'2012-06-27',3008,5002)
insert into orders values(70011,75.29,'2012-08-17',3003,5007)
insert into orders values(70013,3045.6,'2012-04-25',3002,5001)
select ord_date,salesman_id,ord_no,purch_amt from orders


create table customer(
customer_id numeric(5) primary Key,
cust_Name varchar(30),
city varchar(15),
grade numeric(3),
salesman_id numeric(5)
)


select customer_id,cust_name,city,grade,salesman_id from customer where grade=200
select ord_no,ord_date,purch_amt from orders where salesman_id = 5001

select avg(purch_amt) as 'avg' from orders
select count(DISTINCT salesman_id) as 'count' from salesman
select count(*) as 'count' from customer
select * from customer
select max(purch_amt) as 'maxamt' from orders
select city,max(grade) as 'max' from customer group by city 
select *from customer
select max(purch_amt) as 'max purch',customer_id from orders group by customer_id


select count(*) as count,ord_date,salesman_id from orders group by ord_date,salesman_id
select count(Name) as 'count',city  from salesman group by city 
select count(*) as 'count' from orders where ord_date = '2012-08-17'
select max(purch_amt),salesman_id from orders where salesman_id between 5003 and 5008 group by salesman_id

select * from orders
select * from customer
select * from salesman
select salesman.name,customer.cust_name,salesman.city from salesman inner join customer 
on salesman.salesman_id= customer.salesman_id

select orders.ord_no,orders.purch_amt,customer.cust_name,customer.city from orders inner join customer on 
orders.salesman_id = customer.salesman_id and purch_amt between 500 and 2000

select customer.cust_name,salesman.name,salesman.commission from customer inner join salesman 
on salesman.salesman_id = customer.salesman_id

select customer.cust_name,customer.city,salesman.name,salesman.commission from customer inner join salesman
on salesman.salesman_id=customer.salesman_id and commission >0.12

select customer.cust_name,customer.city,salesman.city,salesman.name,salesman.commission from 
customer inner join salesman on salesman.salesman_id = customer.salesman_id and commission>0.12 and 
salesman.city!= customer.city
  





