create database online_fud_delivaryy;
use online_fud_delivaryy;

create table customer(id int auto_increment primary key,
                      name varchar(20) not null,
                      age int ,
                      phone_no varchar(12),
                      city varchar(30),
                      date date);
describe customer;
create table order_product(id int auto_increment primary key,
                           title varchar(20),
                           price int check(price>10),
                           restaurant_name varchar(20),
                           customer_id int,
                           status enum("pending","accepted","completed"),
                           foreign key (customer_id) references customer(id) on delete cascade );
drop table order_product;
describe order_product;

insert into customer(name,age,phone_no,city,date)values("hari",20,54668292,"palakkad","2025-09-01"),
													("appu",25,98987987,"kochi","2025-08-21"),
                                                    ("abhi",30,79064384,"kottayam","2025-07-04");
                                                    
insert into order_product(title,price,restaurant_name,customer_id,status)values("chapathi",20,"noora restaurant",2,"accepted"),
																				create database online_fud_delivary;
use online_fud_delivary;

create table customer(id int auto_increment primary key,
                      name varchar(20) not null,
                      age int ,
                      phone_no varchar(12),
                      city varchar(30),
                      date date);
describe customer;
create table order_product(id int auto_increment primary key,
                           title varchar(20),
                           price int check(price>10),
                           restaurant_name varchar(20),
                           customer_id int,
                           status enum("pending","accepted","completed"),
                           foreign key (customer_id) references customer(id) on delete cascade );
drop table order_product;
describe order_product;

insert into customer(name,age,phone_no,city,date)values("hari",20,54668292,"palakkad","2025-09-01"),
													("appu",25,98987987,"kochi","2025-08-21"),
                                                    ("abhi",30,79064384,"kottayam","2025-07-04");
                                                    
insert into order_product(title,price,restaurant_name,customer_id,status)values("chapathi",20,"noora restaurant",2,"accepted"),
																				("chicken mandhi",200,"tandt",1,"completed"),
                                                                                ("dosa",30,"best food",3,"pending"),
                                                                                ("idli",20,"best food",1,"pending"),
                                                                                ("chicken mandhi",230,"tandt",3,"completed");
                                                                                

update order_product set status = "accepted" where id =4;
select* from order_product;
delete from customer where id=1;
update customer set age =26 where id =2;
select * from customer;
select name from customer where city="kochi";
select customer.name,order_product.title,order_product.restaurant_name from customer join order_product on customer.id=order_product.customer_id;
select customer.name,order_product.title from customer join order_product on customer.id=order_product.customer_id;
select count(order_product.id) as total_orders from customer join order_product on customer.id=order_product.customer_id;
select count(customer.name) as total_customers from customer join order_product on customer.id=order_product.customer_id;
select max(price) from order_product;
select customer.name, count(order_product.id) as total_order from customer join order_product on customer.id=order_product.customer_id group by customer.name;
select customer.name, order_product.title from customer join order_product on customer.id=order_product.customer_id where status ="pending"; 
select * from order_product where status= "completed";




                                                                             

