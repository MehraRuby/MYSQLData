use realparsmodel;

-- store procedure - small modules 
-- will not return a valuebut takes the parameter
-- create procedure procedurename
-- select query
-- 3 parameter types
       -- in 
       -- out
       -- inout
-- execute procedures with 'call' command
-- in java/ angular application , we will also 'call' command to call store procedures.


-- procedure to list all records
create procedure all_student()
select * from students;

call all_student();

select * from students;
select * from payments;

-- fetch all the payment details of each student from payment table with his/her name

create procedure student_payment()
select s.studentNumber, concat(s.FirstName,' ', s.LastName) as StudentName , p.checkNumber, p.paymentDate , p.amount
from students s inner join payments p using(studentNumber) ;

call student_payment();

-- fetch all the payment details of entered  studentNumber from payment table with his/her name 

create procedure one_student_payment_details(in stnum int)
select s.studentNumber, concat(s.FirstName,' ', s.LastName) as StudentName , p.checkNumber, p.paymentDate , p.amount
from students s inner join payments p where s.studentNumber = p.studentNumber and s.studentNumber = stnum ;

call one_student_payment_details(103);

-- fetch all the payment details of entered  studentNumber from payment table with his/her name as well as 
-- shows the total payment details

create procedure one_student_payment_details_with_total(in stnum int ,out tot int)
select sum(amount) into tot from payments group by studentNumber having studentNumber = stnum;

set @total=0; -- local variable
call one_student_payment_details_with_total(124,@total);
select @total as TotalAmount;

drop procedure one_student_payment_details_with_total;


-- inout parameter
 
create procedure one_student_payment_details_with_total_inout(inout x int)
select sum(amount) into x from payments group by studentNumber having studentNumber = x;

set @result=121;
call one_student_payment_details_with_total_inout(@result);
select @result as TotalAmount;




