create database school_db;
use school_db;
create table students(id int auto_increment primary key,
                      stud_name varchar(20) not null,
                      gender enum("male","female","others"),
                      email varchar(20) unique,
                      mark int check(mark>40),
                      place char(30),
                      phone_no varchar(13));
describe students;
drop table students;

insert into students(stud_name,gender,email,mark,place,phone_no)value("meenu","female","meenu@gmail.com",45,"otp",4556724),
                                                                      ("meera","female","meera@gmail.com",45,"pkd",45566784),
                                                                      ("manu","male","manu@gmail.com",50,"ekm",99866784);
                                                                      
																
