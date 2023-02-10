use realparsmodel;

-- where is use for filter the records
-- in , not null , is , between , and , or
-- order by - for arranging records in ascen or desc manner 

SELECT * FROM employees;

-- arrange all the recoirds in ascending manner
select * from employees order by email;
select * from employees order by jobTitle,email;
select * from employees order by jobTitle,email desc;

-- fetch all employees where office code is 1
select * from employees where officeCode=1;

-- fetch 2 columns -firstname and email for officecode=7
select firstName,email,officeCode from employees where officeCode=7;

select * from employees where officeCode=1 and jobTitle='Sales Rep';
select * from employees where officeCode=1 or jobTitle='Sales Rep';

select * from employees where reportsTo is not null;
select * from employees where reportsTo is null;

select * from employees where employeeNumber >= 1110;

select * from employees where employeeNumber >= 1110 and employeeNumber<=1300;

-- correctway is - to use 'between'
select * from employees where employeeNumber between 1143 and 1286;

select firstName,email from employees where firstName in ('Jeff','Steve','Tom','Peter');

-- either or case will be handle by 'in' keyword
select * from employees where officeCode in (1,3,6);

-- like always used for pattern checking

select * from employees where lastName like 'T%'; -- search names starts with letter 'T'

select * from employees where lastName like '%on';-- end on 'on' characters

select * from employees where lastName like '%on%';

-- fetch all firstName where second letter in name is 'e' 
select * from employees where firstName like '_e%';   -- % for all the characters   _ for fixed characters

select * from employees where lastName like 'T_'; -- length of the text is fixed i.e 2

select * from courses where courseScale like '1:_';

select * from courses where courseScale like '1:__%';

select * from employees where lastName like 'T%n';

-- group all the records on the basis of officeCode
-- having clause - for conditions with group by
select * from employees order by officeCode;

select * from employees group by officeCode;

select count(*),officeCode from employees group by officeCode;

select * from payments;

-- fetch total of all the students

select  
sum(amount) as SUMOFAMOUNT ,studentNumber from payments 
group by studentNumber 
order by studentNumber 
desc;

select  
min(amount) as MINIMUMOFAMOUNT ,studentNumber from payments 
group by studentNumber 
order by studentNumber 
desc;

select  
max(amount) as MAXIMUMOFAMOUNT ,studentNumber from payments 
group by studentNumber 
order by studentNumber 
desc;

-- show max amount paid by each student where student number > 470
select  
max(amount) as MAXIMUMOFAMOUNT ,studentNumber from payments 
group by studentNumber 
having studentNumber > 470 order by studentNumber;


select * from students;

-- count all the studentnumbers under each country

select count(*),country from students 
group by country
having country in ('France','USA');

-- count records where first name starts from 'J' or 'C' and country is either france or usa
select count(*) , country  from students 
where FirstName like 'J%' or 'C%' 
group by country
having country in('France','USA');














  

















