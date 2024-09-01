create database if not exists XYZ;

use xyz;
create table employee(
e_id int primary key not null,
e_name varchar(100),
e_sal double 
);
insert into employee (e_id,e_name,e_sal) values 
(1,"Adam",25000),
(2,"Bob",30000),
(3,"Casey",40000);
select * from employee;
