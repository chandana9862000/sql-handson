create database officialjobportal--------registration----------
use officialjobportal
create table userlogin(emailid varchar(30) ,pasword varchar(15))
select * from userlogin
insert into userlogin values('nani@gmail.com','12345')
insert into userlogin values('chinnu@gmail.com','123')                    
----------user registration---------userinformation--
create table userinformation(
firstname varchar(20),
lastname varchar(20),
mobilenumber int ,
emailid varchar(20),
pasword varchar(20),
retypepassword varchar(20)
)


 select * from userinformation
 drop table userinformation
 select *  from userinformation
 --------job detilas available--------
 create table jobdetails(jobid numeric,jobtitle varchar(20),joblocation varchar(50),technicalskills varchar(30),companyname varchar(20),
 contactid int,contactperson varchar(20), contactnumber numeric)
 select * from jobdetails
 insert into jobdetails values(1001,'auditing','chennai','asp.net','capgemini',100235,'ramanandhan',9087654590)
 insert into jobdetails values(1002,'trainee','bangloore','csharp','capgemini',100987,'omkar',908765467)
drop table jobdetails
---------jobapplication-------
create table candedatedetails(applicationid  numeric    unique, cname varchar(20),address varchar(20),
emailaddress varchar(30),mobilenumber numeric, jobposition varchar(20),resumefile varchar (50))
select * from candedatedetails
drop table candedatedetails