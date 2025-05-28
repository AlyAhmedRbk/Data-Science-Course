create database users_data;

use users_data;

create table accounts(
	ID int primary key,
    balance decimal(10, 2) check (balance >= 0)
);

select * from accounts;

insert into accounts values (1, -24); -- Balance should be greater than 0 else will show error

insert into accounts values (1, 10000); 

select * from accounts;

create table users_data(
	roll_no INT primary key,
    age INT constraint chk_age check(age >= 5),
    email varchar(100) unique
);

