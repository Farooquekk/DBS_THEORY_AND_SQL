create database if not exists stu_coll ;

use stu_coll;
create table student(
stu_id int ,
stu_name varchar(100) not null,
coll_id int ,
foreign key (coll_id) references college(coll_id),
primary key (stu_id,stu_name)
);

create table college(
coll_id int ,
coll_name varchar(100) not null,
primary key (coll_id,coll_name)
);

insert into college (coll_id,coll_name) values 
(101,"Government College"),
(102,"RMS College");
insert into student(stu_id,stu_name) values 
(37,"Talha"),
(40,"Farooque");
/* insert into student(coll_id) values 
(101),
(102);
*/            -- this is giving me error b/c i am not inserting the record for all columns 
              -- and if I insert it again 37 and 40 record again it will give me error 
              -- b/c of duplicasy of records

 update student set coll_id = 101 where stu_id = 37;
 update student set coll_id = 102 where stu_id = 40;
 -- update command is used to modify existing reocrds in a table.You can use it 
 -- to change the values of specific columns in one or more rows that meet certain 
 -- condition
 
 -- alter command 
 -- 1 adding new column
 alter table student 
 add address varchar(190); 
 
 -- 2 modifying column --> changing data type
 alter table student
 modify column address text;
 
update student set address  = "Tando Allayar" where stu_id = 37;
update student set address  = "Jhuddo Ward : 02 " where stu_id = 40;
 
 -- renaming the table name
 alter table student 
 rename to new_student;
 
 -- renaming the column name
 
 alter table new_student
 rename column address to stu_address;
 
 -- droping the column from table
 
 alter table new_student
 add column dummy int ;
 alter table new_student
 drop column dummy;
 
 alter table new_student
 change column stu_address  stu_addresss text not null;
 
 select * from college;
 
 truncate new_student;
 
 select * from new_student;
 
 alter table new_student
 drop new_student;
 
 
 