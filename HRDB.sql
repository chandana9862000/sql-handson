create database HRDB
create table regions(
Region_id numeric primary key,
Region_name varchar(25) not null,
)
create table countries(
country_id char(2) primary key,
country_name varchar(40) not null,
Region_id numeric foreign key  references regions
)

select * from regions

select * from locations
create table departments(
department_id numeric primary key,
department_name varchar(30) not null,
manager_id numeric not null,
location_id numeric foreign key references locations
)
select * from departments
create table employees(
employee_id numeric primary key ,
first_name varchar(20) not null,
last_name varchar(25) not null,
email varchar(25) ,
phone_number varchar(20) not null,
hire_date date not null,
job_id varchar(10) foreign key references jobs,
salary numeric not null,
commission_pct numeric ,
manager_id numeric ,
department_id numeric  foreign key references departments
)
create table jobs(
job_id varchar(10) primary key,
job_title varchar(35) ,
min_salary numeric,
max_salary numeric
)
select * from employees
select * from jobs
create table job_history(
employee_id numeric foreign key references employees,
start_date date primary key,
end_date date ,
job_id varchar(10) foreign key references jobs,
department_id numeric foreign key references departments
)
create table job_grades(
grade_level varchar(2) primary key,
lowest_sal numeric ,
highest_sal numeric
)
select * from job_grades
select *from job_history

