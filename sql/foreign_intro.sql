create database intro_foreign;
use intro_foreign;
create table persons(person_id int NOT NULL,
first_name varchar(20),
last_name varchar(20),
age int not null,
primary key(person_id) );

insert into persons values 
(1,'David','De gea',31),
(2,'Lisandro','Maritnez',25),
(3,'Rapha','Varane',35);

select * from persons;
describe persons;

create table orders(order_id int NOT NULL,
order_no int NOT NULL,
person_id int,
PRIMARY KEY(order_id),
FOREIGN KEY(person_id) references persons(person_id)
);

INSERT INTO orders values 
(1,500,3),
(2,324,1),
(3,1001,2);

select * from orders;
describe orders;
