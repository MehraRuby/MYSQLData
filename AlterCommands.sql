-- add new column in a table
alter table student add coursename varchar(50);


-- to select all the records
select * from student;

-- to delete a specific column from a table
alter table student drop coursename;

-- to modify the column details
alter table student modify score bigint;

-- check the table schema
describe student;

-- delete all the records as well as the space allocated for these records
truncate table student;
-- once records get truncated , then not get rollback

-- rename table
alter table student rename to studentDB;

