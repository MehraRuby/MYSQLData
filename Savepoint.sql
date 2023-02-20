/* savepoints */

select * from students;
select * from marks;
select * from modules;

start transaction;
savepoint stage1;

select * from modules;
insert into modules values('CM00911','Hadoop');

savepoint stage2;
update modules set module_name='MS-WORD' where module_code =  'CM00911';

savepoint stage3;
delete from modules where module_code =  'CM00911';
select * from modules;
commit;
rollback to stage2;
commit;




