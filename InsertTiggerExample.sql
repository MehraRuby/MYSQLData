create table audit_tbl(
id int primary key,
username varchar(20),
auditdate datetime,
contactno varchar(10));

select substr(user(), 1,instr(user(),'@')-1);

create trigger after_audit_rec
after insert on audit_tbl
for each row
	update audit_tbl set auditdate = now(); 
 
insert into audit_tbl (id,username,contactno) values(1, substr(user(), 1,instr(user(),'@')-1) ,1234);

drop trigger after_audit_rec;