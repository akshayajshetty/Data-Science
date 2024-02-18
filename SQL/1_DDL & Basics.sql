create database mydatabase;

#drop database mydatabase;

use mydatabase;

show databases;


create table mytable(
id int primary key not null,
name varchar(25) not null,
gender varchar(1),
age int,
salary int);

describe mytable;

show tables;

insert into mytable
values (1,'Akshay','M',25,34567);

select * from mytable;

insert into mytable
values (2,'Mike','M',27,20000),
	(3,'Smith','M', 29,25000),
    (4,'Amy','F',23,26000),
    (5,'Sam','F',28,26489);

select * from mytable;

update mytable
set age = 32
where id = 3;

select * from mytable;

delete from mytable
where name = 'Sam';

select * from mytable;

drop table mytable;

show tables;

truncate table mytable;

select * from mytable;

alter table mytable
add column salary float;

describe mytable;

alter table mytable
drop column salary;

alter table mytable
rename column name to first_name;

describe mytable;

alter table mytable
modify column salary float;

rename table mytable to employee;

rename table employee to mytable;






