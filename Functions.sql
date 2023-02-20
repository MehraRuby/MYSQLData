-- aggregated functions
use realparsmodel;
select * from students;

select count(country), sum(creditLimit) , max(creditLimit) , round(avg(creditLimit)) , country from students group by country;

-- unique field values
select distinct country from students;

-- string / text functions


select ucase(country) from students;
select lcase(country) from students;

select left(country,3) from students;  -- fetch left side 3 letters from the text
select right(country,3) from students ; -- fetch right side 3 letters from the text

select * from products;

select ltrim(prnm) from products;
select rtrim(prnm) from products;
select trim(prnm) from products;


select length(prnm),prnm from products;

select substr(prid,1,4) , prid from products;  -- from 1st location , pick 4 character
select substr(prid,4,3), prid from products;  -- from 4th location, pick 3 characters

select substr( prid ,  4 , length(prid)-3 ) from products;

select instr(prid,'-') , prid from products;

select * from employees;

select instr(email,'@') , length(email) ,email from employees;  -- instr returns the location of the searched character

-- fetch all the user names from email id

select substr(email , 1 , instr(email,'@')-1 ) as UserNames , email from employees;

select mid(email,5,7), email from employees;

-- fetch all the company names mention in email id

select substr(email , instr(email,'@')+1 , length(email)-instr(email,'@')) , email from employees;

-- concatenation
select concat(LastName,' ',FirstName) as StudentName from students;  























