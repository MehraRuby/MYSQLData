use constraintsdb;

create table course (
crid int, crnm varchar(50),price int,
primary key (crid,crnm)
);
-- 1 case
insert into course values(101,'hadoop',9000),
(102,'hadoop',9000),
(103,'hadoop',9000),
(101,'java',9000);

-- 2 case
insert into course values(101,'java',9000);

-- 3 case
insert into course values(101,'hadoop',10000);

-- 

create table courses
(crid int not null primary key auto_increment,
crnm varchar(50)
);

create table student 
(stid int not null primary key,
stnm varchar(50),
crid int);

alter table student 
add constraint fkn_crid  -- foreign key constraint name
foreign key (crid)  -- foreign key in current table
references courses(crid) -- reference to parent table's primary key
on delete cascade
on update cascade;   

-- cascade operations  . 1: delete 2: update

insert into courses (crnm) values('Hadoop'),('Java');

insert into student values (111,'pooja',1),
(112,'mohan',1),
(113,'william',1),
(114,'gautam',2),
(115,'harsh',2),
(116,'mohan',3),
(117,'william',3),
(118,'gautam',4),
(119,'harsh',4);

select * from courses;
select * from student;

-- delete one course
delete from courses where crid=3; 

alter table student drop foreign key fkn_crid;




