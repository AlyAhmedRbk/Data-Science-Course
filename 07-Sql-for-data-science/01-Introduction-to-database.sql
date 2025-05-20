create database users;

show databases;

use users;

create table students(
	id int primary key auto_increment,
    name varchar(50),
    age int,
    email varchar(50) unique
);

insert into students values(1, 'Ali Ahmed', 24, 'ali@test.com');

select * from students;