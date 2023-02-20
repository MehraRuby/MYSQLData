use javadb;


select * from customer_backup;
select * from customer_details;

delete from customer_backup;

-- use of cursor
/*
	1: to fetch data by using row by row processing 
    2: to use iteration
    3: can be used with trigger and store procedures
    4: when you get the value /no of records  , one by one from a table
    
*/

delimiter $$
create procedure mycursor()
begin
       declare nm,ad varchar(50);
       declare cd int;
       declare d int default 1;
       
       declare getdatafromcutomerdetails cursor for select * from customer_details;	
       open getdatafromcutomerdetails;
       
       if d = 1 then
			fetch  getdatafromcutomerdetails into cd,nm,ad;
				insert into customer_backup values (cd , nm , ad);
       end if;       
       close getdatafromcutomerdetails;
end$$

call mycursor();
  
  -- cursor with loop - row one by one
  
  
delimiter $$
create procedure rowonebyonecursor()
begin
       declare nm,ad varchar(50);
       declare cd int;
       declare d int default 0;
       
       declare getdatafromcutomerdetails cursor for select * from customer_details;	
       	
	   declare continue handler for not found set d = 1;
        
       open getdatafromcutomerdetails;
       
		ruby : LOOP
        
				fetch  getdatafromcutomerdetails into cd,nm,ad;                    
				if d = 1 then
					leave ruby;
				end if;
                insert into customer_backup values (cd , nm , ad);
                update customer_details set cnm =ucase(cnm) where cid = cd;
          
		end LOOP ruby;
       close getdatafromcutomerdetails;
end$$

call rowonebyonecursor();













