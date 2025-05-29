create database students_data;

use students_data;

create table students(
	id int primary key auto_increment,
    name varchar(100) not null unique
);

create table marks(
	student_id int,
    subject_name varchar(100),
    scores int,
    foreign key (student_id) references students(id)
    on update cascade
    on delete set null
);

insert into students values 
(01, 'Ali Ahmed'),
(02, 'Ali Shan'),
(03, 'Ali Kahn');

insert into students values (04, 'sarah khan');

insert into marks values
(01, 'maths', 100),
(01, 'science', 80),
(01, 'history', 70),
(02, 'maths', 90),
(02, 'science', 80),
(02, 'history', 60),
(03, 'maths', 80),
(03, 'science', 60),
(03, 'history', 60);

insert into marks values (04, 'Computer Science', 85);

select * from students;
select * from marks;

-- using inner joins
select students.name, marks.subject_name, marks.scores from students inner join marks on students.id = marks.student_id;

-- using left join
 select students.name, marks.subject_name, marks.scores from students left join marks on students.id = marks.student_id;
 
 -- using right join
 select students.name, marks.subject_name, marks.scores from students right join marks on students.id = marks.student_id;
 
 -- using cross join
 
 select students.name, marks.subject_name from students cross join marks;