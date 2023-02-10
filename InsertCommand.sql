insert into student (stname,score)  values 
                         ('pooja',90),
                         ('mohan',78),
                         ('william',98),
                         ('jack',69);
insert into student (stname,score) values('ajay',89);   

create  table product                  
(prid int , 
prnm varchar(50), 
price int);

insert into product values(101,'headset',1000);
select * from product;

insert into product values(102,'speaker',1000);
insert into product values(103,'mouse',1000);
insert into product values(104,'usb',1000);
insert into product values(105,'printer',1000);

select * from product;
drop table product;



