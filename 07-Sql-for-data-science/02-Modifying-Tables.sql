create database employees;

use employees;

create table employee(
	id int primary key auto_increment,
    name varchar(50),
    age int,
    gender varchar(50),
    pay int
);

rename table employee to employee_data;

insert into	employee_data values (01, 'Ali Ahmed', 24, 'Male', 50000);

select * from employee_data;

show tables;

drop table employee_data; -- drop keyword used to delete the table   

ALTER table employee_data RENAME column pay to Salary; -- Alter -> updates the column name  

