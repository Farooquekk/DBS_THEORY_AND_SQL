-- views
-- a virtual table based on the result-set of an SQL statement
-- the fields in a view are fields from one or more real tables in the database 
-- they are not real tables, but can be interacted with as if  they were

select * from employees;

create view employee_attendance as select firstName,lastName from employees;

select * from employee_attendance ;
select * from employee_attendance order by lastName;
-- in mysql you cannot drop a view by using the 'alter table '  statement . You  must use 
-- 'drop view ' statement specifically designed for dropping views

drop view employee_attendance ;