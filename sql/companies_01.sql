create database companies;
use companies;
CREATE TABLE `salespersons` (
  `salesperson_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(250) DEFAULT NULL,
  `last_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`salesperson_id`)
);
CREATE TABLE `address` (
  `address_id` int NOT NULL,
  `salesperson_id` int DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`address_id`),
  KEY `salesperson_id_idx` (`salesperson_id`),
  CONSTRAINT `salesperson_id` FOREIGN KEY (`salesperson_id`) REFERENCES `salespersons` (`salesperson_id`) ON DELETE CASCADE
);

-- task 01
select s.first_name,s.last_name, a.city,a.country,a.state from salespersons s 
inner join address a 
on s.salesperson_id = a.salesperson_id;

CREATE TABLE `sale` (
  `sale_id` int NOT NULL,
  `employee_id` int NOT NULL,
  `sale_date` date DEFAULT NULL,
  `sale_amt` int DEFAULT NULL
);
-- highest salary
select (max(sale_amt )) as highest_sale from sale;
-- second highest
select sale_amt from sale order by sale_amt desc limit 1 offset 1;
-- third highest
select sale_amt from sale order by sale_amt desc limit 1 offset 2;
