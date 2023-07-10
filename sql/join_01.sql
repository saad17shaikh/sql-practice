create database country;
use country;

create table country (country_id int primary key auto_increment , country_name varchar(25), country_descr text null);

create table state 
(state_id int auto_increment,state_name varchar(25),
state_desc text,
country_id int, 
primary key (state_id),
foreign key(country_id) references country(country_id) );

insert into country (country_name,country_descr) values ("India","India is a great country"),
("USA","Usa is developed country"),
("Canada",'');

insert into state (state_name,state_desc,country_id) values("Gujarat","Idustrial State",1),
("MP","Forest State",1),
("New York","",2),
("Toronto","",3);

select * from state;

select state.state_id,state.state_name,state.state_desc,country.country.country_name 
from state inner join country 
ON state.country_id = country.country_id;

select version(), current_date(),now();
select user(),current_date();