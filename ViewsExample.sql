create database viewexample;
use viewexample;

create table trainer(trainer_id int primary key auto_increment,
emailid varchar(40) not null,
phone varchar(10));

create table course(crid int primary key auto_increment,
course_name varchar(20) not null unique,
trainer_id int not null);

alter table course add constraint fk_trs_id foreign key(trainer_id) 
references trainer(trainer_id) on delete cascade on update cascade;

insert into trainer (emailid,phone) values('zxc@abc.com',1234),
('cvb@abc.com',5656),
('ert@abc.com',3455),
('wer@abc.com',8767),
('ghj@abc.com',8766);


insert into course (course_name , trainer_id) values('java',1),
('hadoop',2),
('word',3),
('asp',4),
('springboot',5);

select * from trainer;
select * from course;

-- create a view 
create view course_trainer_view
as
select course_name,trainer_id from course;

select * from course_trainer_view;

-- alter the view

alter view course_trainer_view
as
select c.course_name , t.trainer_id , t.emailid from course c , trainer t where t.trainer_id = c.trainer_id;

select * from course_trainer_view;

-- using inner joins
alter view course_trainer_view
as
select c.course_name , t.trainer_id , t.emailid from course c inner join  trainer t  using (trainer_id);

select * from course_trainer_view;

-- delete a view

drop view if exists course_trainer_view;

