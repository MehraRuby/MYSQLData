select * from payments;

select studentNumber , amount , (amount+amount/2) as PriceHalf_Value from payments ;

select * from payments where studentNumber <> 124;
select * from payments where studentNumber != 124;

-- one of the condition must be true
select * from payments where studentNumber != 124 or amount >50000;

-- both conditions must be true
select * from payments where studentNumber != 124 and amount >50000;

--  studentNumber is not 124 and all the amounts > 50k. Arrange result in desc manner.
select * from payments where studentNumber != 124 and amount >50000 order by studentNumber desc;

select * from payments;

select * from payments where amount > 50000;
select * from payment where amount >=50000 and amount <=80000;
-- select * from payment where amount !> 50000;



















