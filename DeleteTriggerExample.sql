 -- before delete trigger
 
 drop trigger before_delete_customer;
  drop trigger after_delete_customer;
  
  
 create table temp_old_deleted_records(accno int, custnm varchar(20),amount int,del_sys_datetime datetime);
 
 -- create trigger to delete a record from master table and store it to another table
 
 create trigger after_delete_customer
  after delete on customer
  for each row
   insert into temp_old_deleted_records values (old.accno,old.custnm,old.amount,now());
	
   delete from customer where accno=5;
   
    select * from customer;
    select * from temp_old_deleted_records;
    
    -- after delete trigger
    
  create trigger before_delete_customer
  before delete on customer
  for each row
   update mini_statement set balance = 0 where accno = old.accno;
   
   delete from customer where accno=3;
   
    select * from customer;
    select * from temp_old_deleted_records;
    select * from mini_statement;
   