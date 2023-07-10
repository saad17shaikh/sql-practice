create database shop;
use shop;

create table country (
country_id int primary key,
country_name varchar(250),
country_desc text );

insert into  country (country_id,country_name ,country_desc)
values (1,"India","India is in Asia") ,
(2,"Usa","Usa is in South America"), 
(3,"Uk","Uk is in Europe"),
(4,"Canada","Canada is in North America"),
(5,"Spain","Spain is in Europe");
 
create table state (state_id int primary key,
 state_name varchar(250),
 state_desc text,
 country_id int,
foreign key (country_id) references country(country_id));

insert into  state (state_id,state_name ,state_desc , country_id )
values (1,"Gujarat","Gujarat is in India",1) , 
(2,"New york","New york is in Usa",2),
(3,"London","London is in Uk",3),
(4,"Toronto","Toronto is in Canada",4),
(5,"Madrid","Madrid is in Spain",5);

create table category (
category_id int primary key, 
category_name varchar(250),
category_desc text);

insert into category (category_id , category_name ,category_desc) values 
(1,"Electronics","Electronics are available"),
(2,"CLothes","Clothes are available"),
(3,"Shoes","Shoes are available"),
(4,"Watches","Watches are available"),
(5,"Glasses","Glasses are available");

create table sub_category(sub_id int primary key, 
sub_name varchar(250),
sub_desc text, 
category_id int,
foreign key (category_id) references category(category_id));

insert into sub_category (sub_id,sub_name,sub_desc,category_id) values 
(1,'tv','40 inch',1),
(2,'jeans','good quality',2),
(3,'sports shoes','best quality',3),
(4,'smart watches','great quality',4),
(5,'sunglasses','nice quality',5);

create table user (user_id int primary key,
user_fname varchar(250),
user_lname varchar(250),
address text,
city varchar(200),
state varchar(200), 
gender varchar(1),
photo varchar(200),
country_id int,
state_id int,
foreign key (country_id) references country(country_id),
foreign key (state_id) references state(state_id));

insert into user values
(1,"Saad","Shaikh",'station road','Ankleshwar',"Gujarat",'m','',1,1),
(2,"Naki","Saiyed",'bharuch road',"New York",'New York','f','',2,2),
(3,"Arshad","Malek",'Kasbati',"London",'London','m','',3,3),
(4,'Prashant',"Singh","Downtown",'Toronto',"Ontorio","f",'',4,4),
(5,'Kajol',"Devgan","old trafford",'Madrid',"Madrid","f",'',5,5);

create table brand(brand_id int primary key,
brand_name varchar(250),
brand_desc varchar(250),
brand_logo varchar(250));

alter table brand modify brand_logo varchar(250) null;

insert into brand values 
(1,"Apple","Best in Electronics",''),
(2,"Nike","Best in Sports",''),
(3,"Adidas","Best in Clothes",''),
(4,"Rayban","Best in Glasses",'');

create table product(
prod_id int primary key,
prod_name varchar(250),
prod_sdesc varchar(250),
prod_ldesc varchar(250),
price int,
prod_logo varchar(250),
category_id int,
sub_id int,
brand_id int,
foreign key (category_id) references category(category_id),
foreign key (sub_id) references sub_category(sub_id),
foreign key (brand_id) references brand(brand_id)
);

insert into product values 
(1,'iphone','mobile','best in mobiles',100000,'',1,1,1),
(2,'Nike hypervenom','shoes','football shoes',30000,'',3,3,2),
(3,'Sunglasses','glasses','sunglasses for men',5000,'',5,5,4);

select * from product;



select avg(price) as average, sum(price) as sum from product;

select * from product;

select * from user where user_fname like "s%";
select * from user where user_fname like "%i";
select * from user where user_fname like "s%d";

select * from user where city = "Toronto";
select * from user where gender = 'f';

select user.user_id, user.user_fname,country.country_name,state.state_name from user 
inner join country on user.country_id = country.country_id
inner join state on user.state_id = state.state_id;

select product.prod_id,product.prod_name,brand.brand_name,category.category_name,sub_category.sub_name from product 
inner join brand on product.brand_id = brand.brand_id
inner join category on product.category_id = category.category_id
inner join sub_category on product.sub_id = sub_category.sub_id;

select * from state;


select s.state_id,s.state_name,c.country_name from state s
inner join country c on s.state_id = c.country_id;


