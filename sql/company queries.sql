use company;
-- find all employee
select * from employee;
select * from branch;
-- find all employee ordered by salary
select * from employee order by salary desc;
-- find all employee orderd by sex then name 
 select * from employee order by sex,first_name,last_name;
-- first five emplooyee
select * from employee limit 5;
-- first and last name only
select first_name as NAME,last_name as SURNAME from employee;

-- select distinct branch
select distinct branch_name  from branch;

-- functions 
select count(emp_id) from employee;
select sum(salary) from employee;
 -- number of male employees born after 1970 
select count(emp_id) from employee where sex = 'M' and birth_date > '1970-01-01';

select avg(salary) from employee where sex = 'F';
select count(sex) ,sex from employee group by sex;

select sum(total_sales) ,client_id from works_with group by client_id ;
