select current_date();

select current_time();

select current_timestamp();

select now();

select localtime();

select localtimestamp(); 

use students;

alter table students_data add column date_joined datetime default (NOW());

select * from students_data;

insert into students_data values('04' ,'Shanza Karim', 18, 'Female', 3000, now());