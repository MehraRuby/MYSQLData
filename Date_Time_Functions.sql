use realparsmodel;

select * from employees;

-- date functiuons

select now() ,current_date(),current_time();
select current_date() + 10 , current_time() + 10;

select time(now()); -- 24 hours format
select day(now());
select dayname(now());
select month(now());
select monthname(now());
select year(now());
select dayofmonth(now());
select dayofyear(now());
select dayofweek(now()); -- sunday is the first day of a week

select datediff(now(),'2022-06-21');
select date_add(now() , interval 2 year);
select date_add(now() , interval 2 day);
select date_add(now() , interval 2 month);

select timediff('17:23:34','10:00:45');
select hour(now()), minute(now()) , second(now());






