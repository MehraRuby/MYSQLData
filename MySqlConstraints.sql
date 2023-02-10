-- constraints
-- not null
-- null
-- index
-- default
-- primary key
-- foreign key
-- unique
-- check

create database constraintsdb;
use constraintsdb;

create table product (
prid int not null,
prnm varchar(50) not null);

insert into product values(101,'headset');

insert into product (prnm) values('speaker');

select * from product;

alter table product modify prid int not null default -1;

describe product;

create table employee (
empid int primary key,
name varchar(50) ,
salary int default 15000);

insert into employee(empid,name) value(101,'abc'),
      (102,'qwe'),
      (103,'rte'),
      (104,'ser');
      
select * from employee;

alter table employee add age int check (age >=25);

insert into employee(empid,name,age) value(105,'njp',27);
insert into employee(empid,name,age) value(106,'ghj',17);

describe employee;

-- check table

create table information
(
id int,
cost int check (cost>1000));

insert into information values(1,2000);
select * from information;
insert into information values(1,900);

