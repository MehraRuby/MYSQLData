use joinsexamples;

CREATE TABLE members (
    member_id INT AUTO_INCREMENT,
    name VARCHAR(100),
    PRIMARY KEY (member_id)
);

CREATE TABLE committees (
    committee_id INT AUTO_INCREMENT,
    name VARCHAR(100),
    PRIMARY KEY (committee_id)
);

INSERT INTO members(name)
VALUES('John'),('Jane'),('Mary'),('David'),('Amelia');

INSERT INTO committees(name)
VALUES('John'),('Mary'),('Amelia'),('Joe');

SELECT * FROM members;
SELECT * FROM committees;

-- Inner join - intersection of the records on the common field basis

select m.member_id,
m.name,
c.committee_id,
c.name 
from members m 
inner join 
committees c on m.name = c.name;


-- using clause instead of = 

select m.member_id,
m.name,
c.committee_id,
c.name 
from members m 
inner join 
committees c using(name);

-- Left Join

select m.member_id,
m.name,
c.committee_id,
c.name 
from members m 
left join 
committees c using(name);


-- Right Join

select m.member_id,
m.name,
c.committee_id,
c.name 
from members m 
right join 
committees c using(name);

-- cross join

select m.member_id,
m.name,
c.committee_id,
c.name 
from members m 
cross join 
committees c ;

-- self join

CREATE TABLE Employee
(
  EmployeeID INT PRIMARY KEY,
  FullName VARCHAR(50),
  Gender VARCHAR(50),
  ManagerID INT
);

INSERT INTO Employee VALUES(1, 'Pranaya', 'Male', 3);
INSERT INTO Employee VALUES(2, 'Priyanka', 'Female', 1);
INSERT INTO Employee VALUES(3, 'Preety', 'Female', NULL);
INSERT INTO Employee VALUES(4, 'Anurag', 'Male', 1);
INSERT INTO Employee VALUES(5, 'Sambit', 'Male', 1);
INSERT INTO Employee VALUES(6, 'Rajesh', 'Male', 3);
INSERT INTO Employee VALUES(7, 'Hina', 'Female', 3);

select * from  employee;

-- self join 1 way
-- merged query

select  m.ManagerID , m.FullName as ManagerName , e.FullName as EmployeeName
from employee e , employee m where e.EmployeeID = m.ManagerId order by m.ManagerID;


-- self join  2 way

select  m.ManagerID , m.FullName as ManagerName , e.FullName as EmployeeName
from employee e inner join employee m on e.EmployeeID = m.ManagerId order by m.ManagerID;

-- self join 3 way

select  m.ManagerID , m.FullName as ManagerName , e.FullName as EmployeeName
from employee e cross join employee m where e.EmployeeID = m.ManagerId order by m.ManagerID;

-- full outer join -- in mysql full outer join will be done by using 'union all' clause

create table student(stid int primary key,stnm varchar(20));
create table marks(stid int , module_no int , marks int);

select * from student;
select * from marks;

select s.stid , s.stnm , m.module_no , m.marks from student s left join marks m using (stid)
 union all
select s.stid , s.stnm , m.module_no , m.marks from student s right join marks m using (stid);











