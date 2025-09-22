create database student_stud;
show databases;
use Student_stud;
create table details(id int, name char(20),place char(30), age int);
show tables;
describe details;
insert into details(id,name,place,age)value(1,"Sarisha","PKD",21),
                                           (2,"Dona","PKD",20),
                                           (3,"Anagha","PKD",20);
select * from details;                                           
                                         
				