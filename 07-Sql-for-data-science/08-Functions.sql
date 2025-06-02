create database functions;

use functions;

create table employees(
	id int primary key auto_increment,
    first_name varchar(100),
    last_name varchar(100),
    salary int,
    job_title varchar(100)
);


insert into employees values
(01, 'Ali', 'Ahmed', 50000, 'Devops'),
(02, 'Soha', 'Khan', 50000, 'Colud Engineer'),
(03, 'Sara', 'Shan', 50000, 'Developer'),
(04, 'Ahmed', 'Shoail', 50000, 'Sysop')
;

select * from employees;

select concat(first_name, ' ',last_name) as Name from employees;

select first_name, last_name, concat(first_name, ' ',last_name) as Name from employees;

select first_name, length(first_name) as len from employees;