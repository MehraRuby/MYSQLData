create database indexconstraintsDB;
use indexconstraintsDB;

create table student 
(stid int primary key,
firstname varchar(50),
lastname varchar(50),
crnm varchar(10)
);

select * from student;

-- explain command - will show all the 'key' field details.
explain select firstname,lastname from student;
show indexes from student;

-- create index on non-primary key in a table

create index indx_crnm on student (crnm);
show indexes from student;



