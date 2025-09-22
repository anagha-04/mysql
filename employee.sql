create database Companydb;
use Companydb;
create table Employee(id int auto_increment primary key,
					  emp_name varchar(20) not null,
                      dept_name enum("hr","it","intern"),
                      salary int check(salary>8000) default 8001,
                      age int check(age>18),
                      email varchar(25) unique,
                      phone_no varchar(13),
                      gender enum("male","female","others"));
describe Employee;
drop table Employee;
insert into Employee(emp_name,dept_name,salary,age,email,phone_no,gender)value("sooraj","hr",19000,21,"sooraj@gmail.com",9864538762,"male"),
																			  ("raju","hr",19000,28,"raju@gmail.com",9868538762,"male"),
                                                                              ("ammu","it",12000,20,"manu@gmail.com",9864545762,"female");
                                                                              
insert into Employee(emp_name,dept_name,salary,age,email,phone_no,gender)value("meera","hr",23,"meera@gmail.com",54647859,"female");

																			
                    
                                        

                      
