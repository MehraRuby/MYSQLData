create database triggerDB;
use triggerDB;


create table customer(
accno int primary key,
custnm varchar(20),
amount int
);

create table mini_statement(accno int,
balance int,
foreign key fkn_accno (accno)
references customer(accno)
 on delete cascade
 on update cascade);
 
 insert into customer values(1,'pooja',50000),
 (2,'mohan',60000),
 (3,'gopal',40000),
 (4,'william',30000);
 

 -- create trigger triggername
 -- before / after insert/update/delete on tablename
 -- for each row
 -- begin
 -- ACTION - select query
 -- end
 
  -- update after/before trigger
  
  
  -- create trigger to add new record in mini statement when upding the customer table
  
  create trigger before_update_customer
  before update on customer
  for each row
  insert into mini_statement values (1,5000);

  update customer set amount = amount + 1000 where accno = 3;
  
  
  select * from customer;
  select * from mini_statement;
 
 -- to delete a trigger 
  drop trigger before_update_customer;
 
 -- after update trigger
 -- modifiers ->  NEW  OLD
 --              NEW           OLD
 -- insert       y              n
 -- update       y              y
 -- delete       n              y
 
 --  create a trigger which will update balance in mini statement table when 
 -- updating happens in customer table
 
 
 create trigger after_update_customer
  after update on customer
  for each row
   insert into mini_statement values (old.accno,old.amount);
   

  update customer set amount = amount + 1000 where accno = 2;
    
  select * from customer;
  select * from mini_statement;
  
   drop trigger after_update_customer;
 
 
 
 
 
 


