create database sql_intro;
use sql_intro;
create table tbl_1(id int, name varchar(20));
select * from tbl_1;
insert into tbl_1 values 
(1,'AA','ankleshwar'),
(2,'BB','bharuch'),
(3,'CC','surat');
select distinct name from tbl_1;
alter table tbl_1 add city varchar(20);

truncate table tbl_1;


 