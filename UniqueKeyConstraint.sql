use indexconstraintsDB;

-- unique key is not a primary key ,  but consists of unique values

create table employee(
empid int,
empnm varchar(50),
contact varchar(50),
email varchar(200),
primary key (empid),
unique key uq_email (email));

insert into employee values(101,'pooja','1234','abc@gmail.com');
 
insert into employee values(102,'mohan','4567','zxc@gmail.com');

select * from employee;

show indexes from employee;

create index indx_contact on employee (contact) comment 'Contact Index' ;

