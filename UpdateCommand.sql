use batch7374;

select * from customer;

-- update table customer set columnname = newvalue where condition
-- to update avail_balance with new balance 
update customer set avail_balance = 25000 where acc_no=1111;

update customer set avail_balance = avail_balance/2; 


-- operators
update employees set jobTitle = 'Sales Manager (NA)' where lastName like 'T%n';
  
select * from employees;