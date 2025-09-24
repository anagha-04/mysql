create database luminar_db;
use luminar_db;
create table Trainers(id int auto_increment primary key,
                      t_name varchar(20) not null,
                      course enum("py full stack","data science","mearn stack"),
                      email varchar(25) unique,
                      age int check(age>25),
                      gender enum("male","female","others"),
                      salary int check(salary>10000) default 10001,
                      qulification char(20),
                      experience int check(experience>1));
drop table Trainers;
describe Trainers; 
create table students(id int auto_increment primary key,
                      s_name varchar(20) not null,
                      email varchar(20) unique,
                      age int check(age>18),
                       gender enum("male","female","others"),
                       trainer_id int,
                       qulification char(20),
                       foreign key (trainer_id) references Trainers(id));
drop table students;
describe students;

insert into Trainers(t_name,course,email,age,gender,salary,qulification,experience)values("Amal","py full stack","amal@gmail.com",30,"male",29000,"btech",3),
                                                                                         ("Bhavya","data science","bhavya@gmail.com",26,"female",25000,"mca",3),
                                                                                          ("Akshay","mearn stack","akshay@gmail.com",28,"male",15000,"btech",2),
                                                                                          ("Abhijith","py full stack","abhijith@gmail.com",31,"male",30000,"msc cs",5);
select * from Trainers;
insert into students(s_name,email,age,gender,trainer_id,qulification)values("akshara","achu@gamil.com",20,"female",1,"bca"),   
                                                                            ("sreebala","bala@gamil.com",25,"female",1,"bsc cs"),   
                                                                            ("nijisha","niji@gamil.com",19,"female",4,"bsc cs"),   
                                                                            ("nikitha","nikku@gamil.com",21,"female",2,"bca"),                                                                               ("vyshak","vyshak@gamil.com",23,"male",3,"mca");
select * from students;
select t_name, age from Trainers where salary>20000;					
select Trainers.t_name,students.s_name from Trainers join students on Trainers.id=students.trainer_id;
select Trainers.t_name,Trainers.course,students.s_name from Trainers join students on Trainers.id=students.trainer_id;
select Trainers.t_name,students.s_name from Trainers join students on Trainers.id=students.trainer_id where Trainers.course="data science";
select Trainers.course,students.s_name,students.qulification from Trainers join students on Trainers.id=students.trainer_id;
select Trainers.t_name,count(students.id) as total_students from Trainers join students on Trainers.id= students.trainer_id group by Trainers.t_name;
