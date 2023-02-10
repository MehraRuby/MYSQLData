-- create a table
create database batch7795;

-- to activate the table
use batch7795;

-- to delete the table
drop database batch7795;

-- to create a table
create table student(
	stid int primary key auto_increment not null,
    stname varchar(50) not null,
    score int
);

-- insert multiple records
insert into student (stname,score)  values 
                         ('pooja',90),
                         ('mohan',78),
                         ('william',98),
                         ('jack',69);
-- reterive the records
select * from student;

-- count all teh records
select count(*) as TotalRecords from student;  -- 'as' will replace heading with the new heading 
select sum(score) as SumOfScore from student; 
select min(score) as MinOfScore from student; 
select max(score) as MaxOfScore from student; 

-- select current database

select database();

-- check all the databases
show databases;

-- all the tables in a current DB
show tables;

-- shows the schema of the table
describe student;

-- check version 
select version();

-- check user
select user();

-- check current date
select current_date;








