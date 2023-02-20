create table array_example(id int primary key auto_increment,
docs json);

insert into array_example (docs) values ('["happy","best"]');

insert into array_example (docs) values ('["positive","will"]'),
('["happy","food"]'),
('["welcome"," good"]'),
('["morning","evening"]');

select * from array_example;

select * from array_example where docs like '%ppy%';
select * from array_example where docs like '%best%';

