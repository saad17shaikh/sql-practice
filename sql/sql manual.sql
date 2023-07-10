select user(),current_date(),now();

create database pets;
show databases;
use pets;

create table pets(name varchar(50), owner varchar(50),species varchar(50),sex char(1),birth date,death date);
show tables;
describe pets;

INSERT INTO pets VALUES 
('Fluffy','Harold','cat', 'f','1993-02-04',null),
('Claws','Gwen','cat','m ','1994-03-17',null), 	
('Buffy','Harold', 'dog' ,'f ','1989-05-13',null), 	
('Fang','Benny','dog','m','1990-08-27',null), 	
('Bowser','Diane','dog','m', '1979-08-31','1995-07-29'),
('Chirpy','Gwen','bird','f','1998-09-11',null), 	
('Whistler','Gwen','bird',null,'1997-12-09',null), 	
('Slim','Benny','snake','m','1996-04-29',null);

Update pets set birh = '1979-05-13' where name = 'Bowser';

select * from pets;
select * from pets where name = 'Bowser';
select * from pets where birh >= '1993-1-1';
select * from pets where species = 'dog' and sex = 'f';
select * from pets where species = 'dog' or species ='snake';
select * from pets where (species = 'dog' or species = 'bird') and sex='m';

select owner from pets;
select distinct owner from pets;
select name,owner,sex,species from pets where species = 'dog';

-- ORDER BY
select * from pets order by birth;
select name,birth from pets order by birth desc;

select name,species, birth from pets order by species,birth;

select name,owner,birth,current_date(), timestampdiff(year,birth,curdate()) as age from pets;
select name,birth,current_date(), timestampdiff(year,birth,curdate()) as age from pets order by age;
select name,birth,death, timestampdiff(year,birth,death) as age from pets where death is not null;
select name,birth, month(birth) as month from pets order by month;
select name,birth from pets where month(birth) = 3;
select name,birth,day(birth)  from pets order by day(birth);

select name, death,day(death) from pets order by day(death);

-- sql pattern
SELECT * FROM pets WHERE name LIKE 'b%';
select * from pets where name like 'c%';

select * from pets where name like '%fy';
select * from pets where name like '%w%';

select * from pets where name like '_____';

-- REGULAR EXPRESSION
select * from pets where  name REGEXP '^b';
select * from pets where name regexp 'y$';
select * from pets where name regexp 'ff?';

-- count
select count(*) from pets;
select species, count(*) as counted_species from pets group by species;
select owner, count(*) as count_owner from pets group by owner;
select sex, count(*) as no_sex from pets group by sex;
select species,sex,count(*) from pets group by sex,species;
select species,sex,count(*) from pets where species = 'cat' or species = 'dog' group by species,sex;

create table event (name varchar(250),date date,type varchar(250),remark text);
select * from event;

drop table event;

alter table event modify date date; 

select pets.name, timestampdiff(year,birth,date) as age, remark from pets
inner join event 
on pets.name = event.name 
where event.type = 'litter';


