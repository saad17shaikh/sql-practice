use company;
select * from employee;
-- Corpotrate brach
insert into employee values(100,'David','Wallace','1967-11-17','M',250000,null,null);
insert into branch values(1,'Corporate',100,'2006-02-09');
update employee set branch_id = 1 where emp_id = 100;
insert into employee values(101,'Jan','Levinson','1961-05-11','F',110000,100,1);

-- Scranton branh
insert into employee values(102,'Michael','Scott','1964-03-15','M',75000,100,null);
insert into branch values(2, 'Scranton',102,'1992-04-06');
update employee set branch_id = 2 where emp_id = 102;

insert into employee values(103,'Angela','Martin','1971-06-25','F',63000,102,2);
insert into employee values(104,'Kelly','Kapoor','1980-02-05','F',55000,102,2);
insert into employee values(105,'Stanley','Hudson','1958-02-19','M',69000,102,2);

 -- Stamford 
insert into employee values(106,'Josh','Porter','1969-09-05','M',78000,100,null);
insert into branch values (3,'Stamford',106,'1998-02-13');

update employee set branch_id = 3 where emp_id= 106;
insert into employee values(107,'Andy','Bernard','1973-10-01','M',65000,106,3);
insert into employee values(108,'Jim','Haipert','1978-10-01','M',71000,106,3);

-- client table

insert into client values(400,'Dunmore',2),
(401,'Lackawana','2'),
(402,'FedEx','3'),
(403,'John Dally','3'),
(404,'Scranton White','2'),
(405,'Times news','3'),
(406,'FedEx','2');

insert into works_with values(108,402,22500);
insert into works_with values(107,403,5000);
insert into works_with values(105,404,33000);
insert into works_with values(107,405,26000);
insert into works_with values(102,406,30000);
insert into works_with values(105,406,27000);

insert into branch_supplier values(2,'Hammer Mill','Paper'),
(2,'Uni-ball','Writing Utensils'),
(3,'Patriot Paper','Paper');

