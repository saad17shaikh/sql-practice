create database svmit;
use svmit;

create table student(std_id int,fname varchar(25),lname varchar(25),age int,city varchar(25));

insert into student values (1,"Saad","Shaikh",21,"Ankleshwar"),
(2,"Naki","Saiyed",25,"Bharuch"),
(3,"Arshad","Malek",31,"Vadodara");

select * from student;

update student set city = "bharuch" where std_id = 3;

delete from student where std_id = 3;

create table phone (m_id int auto_increment primary key, m_name varchar(250),model_name varchar(25), price int);

insert into phone(m_name,model_name,price) values ("Apple","14 pro",120000),
("One Plus","Nord 2t",30000),
("Vivo","Y50",20000),
("Oppo","17T",15000);

select * from phone;

update phone set model_name = "14 pro max" where m_id = 1;

delete from phone where m_id = 4;
