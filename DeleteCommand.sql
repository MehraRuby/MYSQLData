use batch7795;
select * from studentdb;
insert into studentdb (stname,score)  values 
                         ('pooja',90),
                         ('mohan',78),
                         ('william',98),
                         ('jack',69);

delete from studentdb;
delete from studentdb where score < 80;

select * from products;