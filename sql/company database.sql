create database company;
use company;
create table employee(
emp_id int, 
first_name varchar(20),
last_name varchar(20),
birth_date date,
sex varchar(1),
salary int,
super_id int,
branch_id int,
primary key(emp_id)
);
alter table employee
add foreign key(branch_id) references branch(branch_id) on delete set null;

alter table employee 
add foreign key(super_id) references employee(emp_id) on delete set null;

create table branch(
branch_id int,
branch_name varchar(20),
mgr_id int,
mgr_start_date date,
primary key(branch_id),
foreign key(mgr_id) references employee(emp_id)
);

create table client(
client_id int, 
client_name varchar(25),
branch_id int,
primary key(client_id),
foreign key(branch_id) references branch(branch_id) on delete set null
);

create table works_with(
emp_id int,
client_id int,
total_sales int,
primary key(emp_id,client_id),
foreign key (emp_id) references employee(emp_id) on delete cascade,
foreign key (client_id) references client(client_id) on delete cascade
);

create table branch_supplier(
branch_id int,
supplier_name varchar(20),
supply_type varchar(20),
primary key(branch_id,supplier_name),
foreign key (branch_id) references branch(branch_id) on delete cascade
);