create database schools_db;
use schools_db;
create table student(id int auto_increment primary key,
                     name varchar(20) not null,
                     age int check(age>18),
                     place varchar(20));
describe student;
insert into student(name,age,place) values("anu",19,"kochi"),
                                              ("hari",23,"palakkad"),
                                              ("appu",20,"kottayam"),
                                              ("abhi",21,"malappuram");
select * from student;
create table marks(id int auto_increment primary key,
				   marks int,
                   student_id int,
                   foreign key (student_id) references student(id) on delete cascade );
describe marks;
insert into marks(marks,student_id)values(50,2),
                                           (45,3),
                                           (32,1),
                                           (40,4);
select * from marks;
select student.name,marks.marks from student join marks on student.id = marks.student_id;
