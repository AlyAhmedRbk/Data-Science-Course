create database students;

use students;

create table students_data(
	roll_no int primary key auto_increment,
    student_name varchar(50),
    age varchar(50),
    gender varchar(50),
    monthly_fees varchar(50)
);

insert into students_data 
values(01, 'Ali Ahmed', 20, 'Male',  '4000'),
(02, 'Ali Shan', 20, 'Male',  '4000'),
(03, 'Sarah Khan', 20, 'Female',  '4000');

select * from students_data;

Set autocommit = 0;

Select * from students_data;

start transaction;

update students_data set age = age + 1 where roll_no = 01;
update students_data set age = age - 1 where roll_no = 02;

commit;


start transaction;

update students_data set age = age - 3 where roll_no = 01;
update students_data set student_name = 'Ali' where roll_no = 01;

select * from students_data;

rollback;

commit;

set autocommit = 1;