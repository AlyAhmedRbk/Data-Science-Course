create database school;

use school;


CREATE TABLE classes (
    class_id INT AUTO_INCREMENT PRIMARY KEY,
    class_name VARCHAR(50) NOT NULL
);

create table students(
	student_id int auto_increment primary key,
    student_name varchar(100) not null,
    class_id int,
    foreign key (class_id) references classes(class_id)
    on update CASCADE
    on delete set NULL
);

select * from students;

insert into classes values 
(01, '11th Class'),
(02, '12th Class');

select * from classes;

insert into students values
(01,'Ali Ahmed',01),
(02,'Shan Ahmed',02),
(03,'Shoaib Khan',01);

select * from students;
select * from classes; 

delete from classes where class_id = 02;

update classes set class_id = 101 where class_id = 01;

insert into classes values (102, '12th Class');

update students set class_id = 102 where student_id = 02;